function [ Z_label, X_label, Y_label, XandY_axesLimits,...
    Z_axesLimits, XandY_ticks, Z_ticks, Title_position, az, el, Title_name] ...
    = Plot_Elements_Res_gain(figure_type, H)
%PLOT_ELEMENTS Summary of this function goes here
%   Detailed explanation goes here
switch figure_type
    case "main_text"
        switch H 
            case "Sk"
                Z_label={"Resident dyad"; "copulation gains"};
                X_label="Lek size (Residents/lek)";
                Y_label="Resident rank";
                XandY_axesLimits=[0 8];
                Z_axesLimits=[0 4];
                XandY_ticks=[1 3 5 7];
                Z_ticks=[0 1 2 3 4]; 
                Title_position=[-2 2 6];
                az = -13;
                el = 27;
                Title_name="A";
            otherwise
                warning("Unexpected hypothesis. Please enter: Sk for the main text figure");
        end
    case "appendix_B"
        switch H 
                case "Null"
                    Z_label={"Resident dyad"; "copulation gains"};
                    X_label="Lek size (Residents/lek)";
                    Y_label="Resident rank";
                    XandY_axesLimits=[0 8];
                    Z_axesLimits=[0 4];
                    XandY_ticks=[1 3 5 7];
                    Z_ticks=[0 1 2 3 4]; 
                    Title_position=[-2 2 6];
                    az = -13;
                    el = 27;
                case "UP"
                    Z_label={"Resident dyad"; "copulation gains"};
                    X_label="Lek size (Residents/lek)";
                    Y_label="Resident rank";
                    XandY_axesLimits=[0 8];
                    Z_axesLimits=[0 4];
                    XandY_ticks=[1 3 5 7];
                    Z_ticks=[0 1 2 3 4]; 
                    Title_position=[-2 2 6];
                    az = -13;
                    el = 27;
                case "Sk"
                    Z_label={"Resident dyad"; "copulation gains"};
                    X_label="Lek size (Residents/lek)";
                    Y_label="Resident rank";
                    XandY_axesLimits=[0 8];
                    Z_axesLimits=[0 4];
                    XandY_ticks=[1 3 5 7];
                    Z_ticks=[0 1 2 3 4]; 
                    Title_position=[-2 2 6];
                    az = -13;
                    el = 27;
                case "RSk"
                    Z_label={"Resident dyad"; "copulation gains"};
                    X_label="Lek size (Residents/lek)";
                    Y_label="Resident rank";
                    XandY_axesLimits=[0 8];
                    Z_axesLimits=[0 4];
                    XandY_ticks=[1 3 5 7];
                    Z_ticks=[0 1 2 3 4]; 
                    Title_position=[-2 2 6];
                    az = -13;
                    el = 27;
                otherwise
                    warning("Unexpected hypothesis. Please enter: Null, UP, Sk, or RSk as the hypotheses");
        end
    case "appendix_D"
    

    case "Null"
        Z_label={"Resident dyad"; "copulation gains"};
        X_label="Lek size (Residents/lek)";
        Y_label="Resident rank";
        XandY_axesLimits=[0 8];
        Z_axesLimits=[0 4];
        XandY_ticks=[1 3 5 7];
        Z_ticks=[0 1 2 3 4]; 
        Title_position=[-2 2 6];
        az = -13;
        el = 27;
    case "UP"
        Z_label={"Resident dyad"; "copulation gains"};
        X_label="Lek size (Residents/lek)";
        Y_label="Resident rank";
        XandY_axesLimits=[0 8];
        Z_axesLimits=[0 4];
        XandY_ticks=[1 3 5 7];
        Z_ticks=[0 1 2 3 4]; 
        Title_position=[-2 2 6];
        az = -13;
        el = 27;
    case "Sk"
        Z_label={"Resident dyad"; "copulation gains"};
        X_label="Lek size (Residents/lek)";
        Y_label="Resident rank";
        XandY_axesLimits=[0 8];
        Z_axesLimits=[0 4];
        XandY_ticks=[1 3 5 7];
        Z_ticks=[0 1 2 3 4]; 
        Title_position=[-2 2 6];
        az = -13;
        el = 27;
    case "RSk"
        Z_label={"Resident dyad"; "copulation gains"};
        X_label="Lek size (Residents/lek)";
        Y_label="Resident rank";
        XandY_axesLimits=[0 8];
        Z_axesLimits=[0 4];
        XandY_ticks=[1 3 5 7];
        Z_ticks=[0 1 2 3 4]; 
        Title_position=[-2 2 6];
        az = -13;
        el = 27;
    otherwise
        warning("Unexpected hypothesis. Please enter: Null, UP, Sk, or RSk as the hypotheses");
   
end

