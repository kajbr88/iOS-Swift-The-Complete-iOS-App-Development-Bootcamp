protocol AdvancedLifeSupport {//protocol is a list of instructions or commands.
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assesSituation()  {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency()  {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){ // sign up to be notified by handler
        handler.delegate = self
    }
    
    func performCPR(){
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){ // sign up to be notified by handler
        handler.delegate = self
    }
    
    func performCPR(){
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope(){
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    
    override func performCPR(){
        super.performCPR()
        print("Sings staying alive by the BeeGees.")
    }
    
    func useElectricDrill(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
//let ar = Paramedic(handler: emilio)
 let angela = Surgeon(handler: emilio)
	
//emilio.assesSituation()
//emilio.medicalEmergency()
angela.useElectricDrill()
