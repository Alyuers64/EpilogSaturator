<Cabbage>
form caption("SoftTube") size(520, 260), guiMode("queue"), colour(20, 20, 20), pluginId("VNT3")

rslider bounds(15, 40, 110, 110), text("Saturation"), channel("satur"), range(0, 1, 0, 1, 0.001), trackerColour(255, 100, 100), colour(70, 70, 70), textColour(255, 255, 255)
rslider bounds(140, 40, 110, 110), text("Analog Feels"), channel("analog"), range(0, 1, 0, 1, 0.001), trackerColour(100, 200, 255), colour(70, 70, 70), textColour(255, 255, 255)
rslider bounds(265, 40, 110, 110), text("Vintage"), channel("vintage"), range(0, 1, 0, 1, 0.001), trackerColour(255, 200, 100), colour(70, 70, 70), textColour(255, 255, 255)
rslider bounds(390, 40, 110, 110), text("Airy"), channel("airy"), range(0, 1, 0, 1, 0.001), trackerColour(150, 255, 150), colour(70, 70, 70), textColour(255, 255, 255)

label bounds(10, 190, 500, 30), text("EpiloG Saturator"), fontColour(200, 200, 200), colour(20, 20, 20), align("centre"), fontSize(20)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-d -n
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1.0

instr 1
    aInL inch 1
    aInR inch 2

    kSat    chnget "satur"   
    kAnalog chnget "analog"  
    kVint   chnget "vintage"
    kAiry   chnget "airy"
    
    kGain = 1 + (kSat * 8) + (kVint * 3)
    
    aSatL = tanh(aInL * kGain)
    aSatR = tanh(aInR * kGain)
    
    kCutoff = 20000 - (kAnalog * 15000) - (kVint * 4000)
    if kCutoff < 100 then
        kCutoff = 100
    endif
    
    aOutL tone aSatL, kCutoff
    aOutR tone aSatR, kCutoff

    if kAiry > 0 then
        aAiryL atone aOutL, 8000
        aAiryR atone aOutR, 8000
        aOutL = aOutL + (aAiryL * kAiry * 1.5)
        aOutR = aOutR + (aAiryR * kAiry * 1.5)
    endif

    kComp = 1 / (1 + (kSat * 2))
    
    aFinalL = aOutL * kComp
    aFinalR = aOutR * kComp
    
    outch 1, aFinalL
    outch 2, aFinalR
endin

</CsInstruments>
<CsScore>
i 1 0 z
</CsScore>
</CsoundSynthesizer>