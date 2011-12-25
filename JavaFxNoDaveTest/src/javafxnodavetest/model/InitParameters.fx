/*
 * InitParameters.fx
 * Created on 29-mei-2010, 15:30:52
 */
package javafxnodavetest.model;
/**
 * @author Alex Sentcha
 */
import javafxnodavetest.Main;
import javafxnodavetest.model.Parameters;


// temporary variables needed during processing
var result: Parameters;

public function addParameters(){

    result = Parameters{};
    result.id= "2010001";
    result.title = "tank transparent";
    result.parameter1 = "scalable";
    result.parameter2 = "alarm HHL, HL, LL";
    result.parameter3 = "level value";
    result.comment = "try to change: on-off, value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010002";
    result.title = "tank";
    result.parameter1 = "scalable";
    result.parameter2 = "alarm HHL, HL, LL";
    result.parameter3 = "level value";
    result.comment = "try to change: on-off, value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010003";
    result.title = "tank transparent";
    result.parameter1 = "scalable";
    result.parameter2 = "alarm HHL, HL, LL";
    result.parameter3 = "level value";
    result.comment = "try to change: on-off, value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010004";
    result.title = "control valve";
    result.parameter1 = "open-close";
    result.parameter2 = "control value";
    result.parameter3 = " ";
    result.comment = "try to change: on-off, value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010005";
    result.title = "flowmeter";
    result.parameter1 = "control value";
    result.parameter2 = " ";
    result.parameter3 = " ";
    result.comment = "try to change: on-off, value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010006";
    result.title = "agitator";
    result.parameter1 = "on-off";
    result.parameter2 = "reversible";
    result.parameter3 = "rotation value";
    result.comment = "try to change: on-off, rotation value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010007";
    result.title = "electric valve";
    result.parameter1 = "on-off";
    result.parameter2 = " ";
    result.parameter3 = " ";
    result.comment = "try to change: on-off";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010008";
    result.title = "pump";
    result.parameter1 = "on-off";
    result.parameter2 = "reversible";
    result.parameter3 = "rotation value";
    result.comment = "try to change: on-off, rotation value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010009";
    result.title = "alarm";
    result.parameter1 = "on-off";
    result.parameter2 = " ";
    result.parameter3 = " ";
    result.comment = "try to change: scale, on-off";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010010";
    result.title = "conveyor";
    result.parameter1 = "on-off";
    result.parameter2 = "reversible";
    result.parameter3 = "rotation value";
    result.comment = "try to change: on-off, rotation value";
    insert result into Main.parameters;

    result = Parameters{};
    result.id = "2010011";
    result.title = "switch, led";
    result.parameter1 = "on-off";
    result.parameter2 = " ";
    result.parameter3 = " ";
    result.comment = "try to change: on-off";
    insert result into Main.parameters;

/*
    result = Parameters{};
    result.id = "2010011";
    result.title = "Bucket Elevator";
    result.parameter1 = "on-off";
    result.parameter2 = "reversible";
    result.parameter3 = "rotation value";
    result.comment = "try to change: on-off, rotation value";
    insert result into Main.parameters;
    insert xx into Main.elementarray;
  */
}
