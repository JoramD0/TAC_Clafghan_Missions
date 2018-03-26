class CfgFunctions {
    class ADDON {
        tag = QUOTE(ADDON);
        class functions {
            file = "functions";
            recompile = 1;
            
            class baseSpectator;
            class briefing;
            class collectIntel;
            class collectIntelPreInit { preInit = 1; };
            class collectIntelPostInit { postInit = 1; };
			class teleport;
            class checkDisguise;
            class addCheckDisguiseAction;
            class initialiseDisguiseHandler;

            class initialiseCities;
            class createCity;
        };
    };
};
