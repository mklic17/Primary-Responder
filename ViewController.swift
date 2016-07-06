//
//  ViewController.swift
//  PrimaryResponder
//
//  Created by Mitchell Klich on 4/27/16.
//  Copyright © 2016 College Tuition. All rights reserved.
//

import UIKit

struct Question {
    
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
    
}

class ViewController: UIViewController {



    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    var totalCount = 0
    var countCorrect = 0
    var checkCorrect:Bool = true
    @IBOutlet var countLabel: UILabel!
    var button1Count = 0
    var button2Count = 0
    var button3Count = 0
    var button4Count = 0
    
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.'
        
     
        
        Questions = [
                    Question(Question: "Our main job as lifeguards is _______________ lifeguarding", Answers: ["preventative", "educational", "pool","duty to act"], Answer: 0),
                    Question(Question: "What is an AFR?", Answers: ["Another Free Runner", "American Family Radio", "AirFlow Research","Accidental Fecal Release"], Answer: 3),
                    Question(Question: "We must remove an unconscious victim from the water physically, but we do not need to remove a _______________ victim who says they can remove themselve", Answers: ["dead", "limp", "hurt","Conscious"], Answer: 3),
                    Question(Question: "If an active drowning victim is left unattended for a short period of time, they will soon become a _______________ drowning victim", Answers: ["Fine", "passive", "Free","injured"], Answer: 1),
                    Question(Question: "If you walk into a room and someone is passed out on the ground, What do you do first?", Answers:["remove the victim from the room","perform a secondary assessment","perform a primary assessment","size up the scene"], Answer: 3),
                    Question(Question: "What is not part of sizing up the scene?", Answers: ["Number of Victims", "Number of Rescuers", "What hazards are still present to you", "Check for consciousness"], Answer: 3),
                    Question(Question: "What is not a part of the Cardiac Chain of Survival?", Answers: ["Early Removal", "Early CPR", "Early Recognition", "Early Advanced Medical Services"], Answer: 0),
                    Question(Question:"While performing a primary assessment on a conscious victim, you hear infrequent gasps coming from the victim. what is this?", Answers: ["the victim breathing on their own", "the victim talking to you", "agonal breaths", "this does not happen"], Answer:2),
                    Question(Question: "While performing conscious choking techniques on an infant, the infant’s head should be lower than _______________ ", Answers: ["the torso", "your arms", "the ground", "the table"], Answer: 0),
                    Question(Question: "What does PPE stand for", Answers:["Personal Performance Evaluation", "Pay Protected Employee", "Pool Patron Education", "Personal Protective Equipment "], Answer: 3),
    //10 questions
                    Question(Question: "While performing conscious choking techniques on an adult or child, your hands should be _______________ the victim’s navel.", Answers: ["nowhere near ", "2 inches below", "on ", "2 inches above"], Answer: 3), Question(Question: "As the secondary rescuer in any scenario involving an unconscious victim, the first thing you should do upon arriving at the scene is _______________.", Answers: ["check the victims pulse", "Make sure that the primary is ok", "Begin acting as a second person in the appropriate rescue methods", "Make sure EMS has been called and an AED is on its way"], Answer: 3),
                    Question(Question: "When an AED arrives on the scene, what is the first thing that you should do?", Answers: ["Apply the pads", "Turn it on", "Double check the victims pulse", "Plug the pads into the AED"], Answer: 1), Question(Question: "Using PPE helps to prevent _______________.", Answers: ["Cooties", "Bloodborne Pathogens", "water transfer", "John Tito"], Answer: 1),
                    Question(Question: "What is NOT a sign and symptoms of a victim who may have a head, neck, or spinal injury?", Answers: ["Blooding from the ears and nose", "victom holding there neck", "Victims back feels numb", "Foam at the mouth"],  Answer: 3),
                    Question(Question: "If you are going to leave a victim, you should put them in the modified _______________ position.", Answers:["Laying", "HAINES", "Side", "RICE"], Answer: 1),
                    Question(Question: "What do you need to operate a BVM", Answers: ["an Oxygen tank", "breathing barrier", "two rescuers", "a backboard"], Answer: 2),
                    Question(Question: "If a person stops all movement in the water, they are most likely a ______________ victim. ", Answers: ["defeated", "submerged", "passive", "active"], Answer: 2),
                    Question(Question: "When you are lifeguarding, and you are assigned to a certain area of the pool to watch, you are being assigned ___________ coverage.", Answers: ["total", "half", "complete", "zone"], Answer: 3),
                    Question(Question: "What does EAP stand for?", Answers: ["Emergency Action Plan", "Employee Assistance Programs", "Emergining Athlete Program", "Emergency Audit Performance"], Answer: 0),
                    Question(Question: "If you refuse to help a patron, or fail to recognize a possible emergency situation, you may be _______________.", Answers: ["paying attention", "negligent", "lifeguarding", "bad"], Answer: 1),
                    Question(Question: "What is the very FIRST thing a lifeguard should do before entering the water to make a save?", Answers: ["enter the water", "Call out to the victim and tell him that you're coming", "Activate the facility's EAP", "take off your sunglasses"], Answer: 2),
    // 20 Questions
                    Question(Question: "What do we need to obtain from all victims before assisting them?", Answers: ["Money", "Notice", "Knowledge", "Consent"], Answer: 3),
                    Question(Question: "What is not a proper method to seal a mask?", Answers: ["Head-tilt, Chin lift", "Head-Jaw Thurst with Head extension", "Head-Jaw Thurst without Head extension", "Lip to Jaw"], Answer: 3),
                    Question(Question: "What technique should you use to seal a mask if the victim has a spinal injury?", Answers: ["Head-tilt, Chin lift", "Head-Jaw Thurst with Head extension", "Head-Jaw Thurst without Head extension", "You can not help the victim"], Answer: 2),
                    Question(Question: "If a victim has a head neck or spinal injury in the water, and the victim is not breathing, we should immediately _______________.", Answers: ["proceed with a spinal extraction method", "remove the victim", "Give them CPR", "Obtain consent"], Answer: 1),
                    Question(Question: "If you are the only lifeguard on duty, you will be assigned _______________ coverage of the pool.", Answers: ["total", "zone", "backup", "part"], Answer: 0),
                    Question(Question : "What do lifeguards use in order to immobolize the head during a spinal injury?", Answers: ["Head Hold", "Head Splint", "Neck Splint", "Spinal Splint"], Answer: 1),
                    Question(Question: "What do you do when a victim has a stroke", Answers: ["Use the RICE Acronym", "Use the SAMPLE Acronym", "Use the LOC Acronym", "Use the FAST Acronym"], Answer: 3),
                    Question(Question: "What does the Acronym FAST stand for?", Answers: ["Face Arm Speech Time", "Front Around Stand Table", "...", "..."], Answer: 0),
                    Question(Question: "What should you give a victim who is having a diabetic emergency to drink?", Answers: ["diet soda", "juice", "soda", "water"], Answer: 1),
                    Question(Question: "What is the ratio of compressions to breaths while providing CPR to an Adult and you are the only rescuer?", Answers: ["15:2", "15:1", "30:2", "30:1"], Answer: 2),
    // 30 Questions
                    Question(Question: "What are you looking for during a secondary assessment", Answers: ["A reason for the injury", "a carotid pulse", "a pulse", "non-life threatening injuries"], Answer: 3),
                    Question(Question: "What is NOT an example of a PPE?", Answers: ["guaze", "gloves", "breathing barrier", "face mask"], Answer: 0),
                    Question(Question: "What is NOT a reason to stop providing CPR", Answers: ["The scene becomes unsafe", "You hear their ribs crack", "You're too tired to continue", "Emergency Medical Servies arrives"], Answer: 1),
                    Question(Question: "What is a DNR?", Answers: ["Do Not Resuscitate", "Do Not Remove", "Department of Natural Resources", "I Do Not know"], Answer: 0),
                    Question(Question: "What should you do when you attempt to give a victim a first breath and the chest does not rise", Answers: ["Restart the primary assessment", "Put the victim in the modified HAINES recovery position", "Attempt another breath", "retilt the airway and provide another breath"], Answer: 3),
                    Question(Question: "When do you provide resuce breathing to a victim", Answers: ["When the victim is not breathing and has a pulse", "When the victim is not breathing and does not have a pulse", "When the victim is breathing and does not have a pulse", "When the victim is breathing and does have a pulse"], Answer: 0),
                    Question(Question: "After you position a mask and seal it, what should you do next?", Answers: ["give the victim a breath", "Open the victims airway", "obtain consent" ,"Remove any constricting clothing"], Answer: 1),
                    Question(Question: "You find an unconscious victim laying on the ground, can you help this person?", Answers: ["No, the victim did not provide any consent", "No, you don't know what is wrong with the victim" ,"Yes, consent is implied", "Yes, you could provide CPR" ], Answer: 2),
                    Question(Question: "What does a DNR entail?", Answers: ["...", "...", "It allows you to obtain consent to rescue a victim", "if a victim is unconscious you cannot resuscitate them "], Answer: 3),
                    Question(Question: "What is part of Sizing up the Scene?", Answers: ["Where is the victim", "Number of Rescuers", "Distance from you", "Who is the victim"], Answer: 1),
    //40 questions
                    Question(Question: "What is part of sizing up the Scene?", Answers: ["Who is with the victim", "What is the victim wearing", "What is the best way to move the victim", "What happened to the victim"], Answer: 3),
                    Question(Question: "What does the 'S' in SAMPLE stand for?", Answers: ["Signs and Symptoms", "Standard", "Swimming", "Stroke"], Answer: 0),
                    Question(Question: "What does the 'A' in SAMPLE stand for?", Answers: ["Action", "Activate", "Allergies", "Attention"], Answer: 2),
                    Question(Question: "What does the 'M' in SAMPLE stand for?" , Answers: ["Medication", "Motivation", "Medical records", "Making a save"], Answer: 0),
                    Question(Question: "What does the 'P' in SAMPLE stand for?", Answers: ["Protect", "Pool Patron safety", "Past Pertinent Medical History", "Rool rules"], Answer: 2),
                    Question(Question: "What does the 'L' in SAMPLE stand for?", Answers: ["Lifeguard", "Laceration", "Lap Swim", "Last oral intake"], Answer: 3),
                    Question(Question: "What does AED stand for?", Answers: ["Acting Emergency Directions", "Advizing Emergency Device", "Automated External Defibrilator", "... "], Answer: 2),
                    Question(Question: "A victim is experiencing difficulty breathing, dizziness, and chest pain. What condition is most likely affecting them?", Answers: ["Heat Stroke", "Heat Exaustion", "Heart Attack", "Allergic Reaction"], Answer: 2),
                    Question(Question: "What does the Material Safety Data Sheet (MSDS) show?", Answers: ["It shows all of the people that people have saved at the pool", "It shows the chemicals that are put into the water", "It shows what the pool provides for our personal protective equipment (PPE)", "It shows all of the hazards found around the pool"], Answer: 1),
                    Question(Question: "What entry should you use if you are jumping into a pool with a depth of 3ft ", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "feet first surface dive"], Answer: 1),
    // 50 questions
                    Question(Question: "What entry should you use if you are jumping into the water and can not see the bottom?", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "head first surface dive"], Answer: 1),
                    Question(Question: "What entry should you use if you suspect that the victim has a spinal injury?", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "Dive in"], Answer: 2),
                    Question(Question: "What entry should you use if the victim is in 10ft of water?", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "Dive in"], Answer: 0),
                    Question(Question: "What entry should you use if you suspect that the victim has a spinal injury?", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "Dive in"], Answer: 2),
                    Question(Question: "What would be the most effective way to tell a patron to stop running?", Answers: ["Stop running because you could fall", "Stop Running!!!", "Stop running because you could hurt yourself, instead try to walk", "The pool rules state that you should not run on deck"], Answer: 2),
                    Question(Question: "You are the lifeguard on duty when you see a young boy running on the deck.You have a duty to act to prevent injuries. What should you do to prevent the child from slipping and falling?", Answers: ["Tell the child to walk on the deck and explain that he could get hurt by slipping and falling", "Allow the child to continue running", "Find the child's mother and have her tell ehr child to stop running", "Notify a headstaff member to tell the child to stop running"], Answer: 0),
                    Question(Question: "If you had not tried to stop the child from running and then the child got hurt, what legal principle could be a problem for you?", Answers: ["Good Samaritan Law", "Watch your water", "Duty to Act", "Negligence"], Answer: 3),
                    Question(Question: "A child was running and fell, scrapping his knee. His mother arrives on the scene. What should you do before providing care to the child", Answers: ["Make sure the child is ok", "apply the necessary PPE", "wash your hands", "obtain consent from the mother"], Answer: 3),
                    Question(Question: "After a lightening strike, how long should the pool close for?", Answers: ["10 minutes", "20 minutes", "30 minutes", "40 minutes"], Answer: 2),
                    Question(Question: "What entry should you use if the pool is crowded and swimmers are directly in front of you?", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "Feet first entry"], Answer: 2),
    // 60 questions
                    Question(Question: "What entry should you use if you are in an elevated lifeguard station that is 4 feet above the level of the water and the water is 7-feet deep. ", Answers: ["Stride Jump", "Compact Jump", "Slide-in", "Feet first entry"], Answer: 1),
                    Question(Question: "As a lifeguard, what is your main responsibility?", Answers: ["to enforce your facility’s rules and regulations", "To save anyone that is drownding", "To provide first aid to any pool patrons", "To keep the facility clean"], Answer: 0),
                    Question(Question: "What is the order of the drowding process?", Answers: ["Distressed Swimmer, Active Drowning, Passive Drowning", "Active Drowning, Passive Drowning, Submerged Drowning", "Conscious, Distressed, Passive", "..."], Answer: 0),
                    Question(Question: "What is a characteristic of a Distressed Swimmer?", Answers: ["The victims arms flailing", "The victim able to call for help", "The victim not moving in the water", "The victim swimming laps"], Answer: 1),
                    Question(Question: "What is a characteristic of a Distressed Swimmer?", Answers: ["The victim is Doggy Paddeling", "The victim can not call for help", "The victim is not breathing", "The victim is Wide eyed"], Answer: 0),
                    Question(Question: "What is not a characteristic of a Distressed Swimmer?", Answers: ["The victim is struggling to stand", "The victim is able to call for help", "The victim is swimming slowly", "The victim's body starts becoming more vertical in the water"], Answer: 2),
                    Question(Question: "What is a characteristic of an Active Drowning Victim?", Answers: ["Victim's body is limp", "Victim is swimming with a weak doggy paddle", "Victims body is vertical in the water", "The victim could ask for help"], Answer: 2),
                    Question(Question: "What is not a characteristic of an Active Drowning Victim?", Answers: ["Victims arms and legs are flailing", "The victim cannot call for help", "The victim is not taking full breaths", "The victim is able to keep themselves above the water" ], Answer: 3),
                    Question(Question: "How do you properly scan your water?", Answers: ["Count the number of people in your zone and only pay attention to that number", "Only pay attention to weak swimmers", "...", "Move your heads while effectively scanning the sides, middle, and bottom scanning"], Answer: 3),
                    Question(Question: "What is not a characteristic of Effective Scanning?", Answers: ["Staring at a Weak Swimmer", "Deliberately and actively observe swimmer’s behavior", "Scan the entire volume of water: bottom, middle and surface", "Move your eyes and head while scanning and look directly at the patron’s body movements."], Answer: 0),
    // 70 Questions
                    Question(Question: "When is emergency Backup Coverage used?", Answers: ["When there is too many people in your zone", "When there is a spinal", "When multiple people are drowning", "When a lifeguard is pulled away from there stand"], Answer: 3),
                                    // It could be used when a lifeguard jumps into the water or pulled away to take care of someone on deck
                    Question(Question: "What is not a main disease that lifeguards usually do not come in contact with", Answers: ["Tuberculosis", "HIV", "Hepatitis B", "Hepatitis C"], Answer: 0),
                    Question(Question: "What is a primary assessment supposed to identify", Answers: ["a pulse", "Life-Threatening injuries", "If the victim is ok", "Non-Life Threatening injuries"], Answer: 1),
                    Question(Question: "During a Primary Assessment, where do you check for a pulse on an Adult?", Answers: ["Brachial pulse", "On the wrist", "Carotid pulse", "on the chest"], Answer: 2),
                    Question(Question: "Where do you check for a pulse on an infant?", Answers: ["Carotid pulse", "Neck", "Brachial pulse", "Thigh"], Answer: 2),
                    Question(Question: "How do you check the responsiveness of the victim?", Answers: ["Ask the Victim for thier name", "Tap the victims shoulder", "You check thier pulse", "Check to see if the victim is breathing"], Answer: 1),
                    Question(Question: "What is the ratio of Breathes to seconds to a Infant while performing rescue breathing ", Answers: ["1 : 5", "1 : 3", "2 : 6", "1 : 6"], Answer: 1),
                    Question(Question: "While performing a Primary Assessment, What are you listening for?", Answers: ["The heartbeat", "The victim breathing", "The victim moving", "an ambulance"], Answer: 1),
                    Question(Question: "What situation should you NOT call EMS for?", Answers: ["Bloody nose", "Chest pain", " Persistent abdominal pain", " Victim’s physical condition is unclear"], Answer: 0),
                    Question(Question: "What is the ratio of Breathes to seconds to an Adult while performing rescue breathing ", Answers: ["1 : 5", "1 : 3", "2 : 6", "1 : 6"], Answer: 0),
    // 80 Questions
                    Question(Question: "When should you call EMS", Answers: ["A boy who is known for having seizures begins seizing", "A boy has a bleeding arm", "A girl is holding her arm", "Altered level of LOC"], Answer: 3),
                    Question(Question: "What is the most common respiratory  emergency?", Answers: ["Asthma attack", "Airway Obstruction", "Drinking too much pool water", "Throwing up"], Answer: 1),
                    Question(Question: "If someone is clutching thier throat and coughing, what should you do?", Answers: ["Begin performing 5 back blows", "Begin performing 5 abdominal thrusts", "Encourage them to keep coughing", "Look in thier mouth"], Answer: 2),
                    Question(Question: "What is the universal sign of choking?", Answers: ["Pointing at the nexk", "Clutching the throat", "Coughing", "Hitting the abdominal"], Answer: 1),
                    Question(Question: "Where should back blows be placed?", Answers: ["on the spine", "In between the shoulder blades", "in the middle of the back", "high on the back"], Answer: 1),
                    Question(Question: "If there is a pregnant woman who is conscious and choking what do you do?", Answers: ["only use back blows", "you need to be creative and find a new way to help her", "use back blows and chest thrusts ", "you can not help her"], Answer: 2),
                    Question(Question: "What is the Cardiac Chain of Survival used for?", Answers: ["Any emrgencies", "emergencies such as a stroke, heat attack, and others", "severly bleeding victims", "immoble victims"], Answer: 1),
                    Question(Question: "What is a Cardiac Arrest", Answers: ["When the heart stops beating or beats too irregularly", "When the heart becomes disconneceted to the rest of the body", "When the heart is beating too fast", "when the blood supply to a specific part of the heart, stops"], Answer: 0),
                    Question(Question: "What is not a symptom of caridac arrest", Answers: ["Unconsciousness", "Sudden Collapse", "A pulse", "Absence of Breathing"], Answer: 2),
                    Question(Question: "What is true about the relationship of a cardiac arrest and heart attack", Answers: ["Caridac Arrest can lead to a heart attack", "A cardiac Arrest and Heart attack are the same thing", "Heart Arracks are always worse than a caridac", "Heart Attack leads to a Cardiac Arrest"], Answer: 3),
    // 90 Questions
                    Question(Question: "When do you assume that there is a spinal injury?", Answers: ["always", "in the shallow water", "When you see the victim hit thier head", "in the deep water"], Answer: 2),
                    Question(Question: "If you're victim has a spinal injury, how do you keep in-line stabilization?", Answers: ["head-chin support", "neck support", "in-line stabilization", "passive roll"], Answer: 0),
                    Question(Question: "You are performing a deep-water spinal, the secondary just placed the guard tube under the victim's knees. What is next?", Answers: ["Pull the victim out of the water", "Put the backboard up on the wall", "Check the victims pulse", "Secondary spikes the backboard"], Answer: 3),
                    Question(Question: "What situation is most likely to result in a spinal injury?", Answers: ["A kid diving off of the diving board into 9ft of water", "A mother going down the slide with her daguhter", "kids playing chicken in the shallow end", "A game of Marco Polo"], Answer: 2),
                    Question(Question: "What type of rescue should you perform if you see someone floating face-down in the deep end?", Answers: ["Spinal", "Primary Assessment", "Passive Extraction", "EAP"], Answer: 2),
                    Question(Question: "When performing a spinal, when do you not need to hold in-line stabilization", Answers: ["You always hold in-line stabilization", "After you place the head supports on", "When you are spiking the backboard", "Once you grab the victim"], Answer: 2),
                    Question(Question: "What is the most important strap when performing a spinal? (assuming you use only 3)", Answers: ["the top strap", "The middle Strap", "The bottom strap", "All of the straps are important"], Answer: 0),
                    Question(Question: "What should you do if you have a spinal victim that is pregnant?", Answers: ["Put 2 baskboards together", "Only use the top strap", "Walk her out of the pool", "Leave them in the water"], Answer: 1),
                    Question(Question: "When performing a spinal, what do you do after you finish strapping the victim into the backboard?", Answers: ["Start putting on the head support", "Pull them out of the water", "Fix the tube at the foot of the board", "Switch to head-chin support"], Answer: 0),
                    Question(Question: "If someone who is more qualified, such as a doctor, presents themselves, what should you do?", Answers: ["Have them present proof before you stop", "don't stop because you already took control", "allow them to takeover", "Quiz them"], Answer: 2),
    // 100 Questions
                    Question(Question: "What do you do if a patron consumes bleach?", Answers: ["Have them throw up", "Call poison control", "Have them lay down", "Have them drink water"], Answer: 1),
                    Question(Question: "A pool patron's tooth gets knocked out, what should you do with the knocked out tooth?", Answers: ["Put the tooth on ice", "Hold onto the tooth", "Place it back inside the patron's mouth", "Place it in milk"], Answer: 3),
                    Question(Question: "What is the least serious type of heat related injury?", Answers: ["Heat Exaustion", "Heat Stroke", "Heat Cramps", "Sun Stroke"], Answer: 2),
                    Question(Question: "What is the minimum amount of people that you need in order to properly perform a in-water spinal (excluding the victim)", Answers: ["1", "2", "3", "4"], Answer: 1),
                   // Question(Questions: "", Answers: ["", "", "", ""], Answer: 2),
                    
                    
        ]
        //Button 0 = 21
        //Button 1 = 20
        //Button 2 = 20
        //Button 3 = 22
        
      
        // ... stands for will implement
        NSLog("There are " + String(Questions.count) + " questions")
        
        PickQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        
        
        
        if Questions.count > 0{
            
            QNumber = random() % Questions.count
            
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
                
                
            }
            
            // this method will have it stop when there fis no more questions to ask.
              Questions.removeAtIndex(QNumber)
            
            let half:Double?
            checkCorrect = true;
            if (countCorrect == 0) {
                countLabel.text = "0"
                half = 0
                
            } else {
                half = round(((Double(countCorrect) / Double(totalCount)) * 100.0))
                let percentage = (half)!
                countLabel.text = String(percentage) + "%"
            }
            
            totalCount += 1
            NSLog("You have gotten " + String(countCorrect))
            NSLog(String(Int(half!)))
            
            
        }
        else {
            
            
            NSLog("Done!")
         
            
        }
        
    }
    
    
    @IBAction func Btn1(sender: AnyObject) {
        if AnswerNumber == 0{
            
            Buttons[0].backgroundColor = UIColor.redColor()
            if (checkCorrect == true){
                countCorrect = countCorrect + 1
      
            }
            PickQuestion()
            
        }
        else {
           
            NSLog("Wrong")
            // where you say the question is wrong
            // have a button that says explanation that pops up
            // have some type of Modal Feedback that shows them that they got it wrong
            Buttons[AnswerNumber].backgroundColor = UIColor.blueColor()
            checkCorrect = false
            
        }
        NSLog(String(checkCorrect))
        button1Count = button1Count + 1
        NSLog("Button 0 = " + String(button1Count))
        
    }
    
    
    @IBAction func Btn2(sender: AnyObject) {
        if AnswerNumber == 1{
         
            Buttons[1].backgroundColor = UIColor.redColor()
            if (checkCorrect == true){
                countCorrect = countCorrect + 1
         
                
            }
            
            PickQuestion()
        }
        else {
            
            Buttons[AnswerNumber].backgroundColor = UIColor.blueColor()
            NSLog("Wrong") // where you say the question is wrong
            checkCorrect = false
        }
         NSLog(String(checkCorrect))
        button2Count = button2Count + 1
        NSLog("Button 2 = " + String(button2Count))
    }
    
    @IBAction func Btn3(sender: AnyObject) {
        if AnswerNumber == 2{
            
            Buttons[2].backgroundColor = UIColor.redColor()
            if (checkCorrect == true){
                countCorrect = countCorrect + 1
    
            }
            
            PickQuestion()
            
        }
            
        else {
            
            Buttons[AnswerNumber].backgroundColor = UIColor.blueColor()
            NSLog("Wrong") // where you say the question is wrong
            checkCorrect = false
        }
         NSLog(String(checkCorrect))
        button3Count = button3Count + 1
        NSLog("Button 3 = " + String(button3Count))
    }
    
    @IBAction func Btn4(sender: AnyObject) {
        if AnswerNumber == 3{
            
            Buttons[3].backgroundColor = UIColor.redColor()
            if (checkCorrect == true){
                countCorrect = countCorrect + 1

            }
            
            PickQuestion()
            
        }
        else {
            Buttons[AnswerNumber].backgroundColor = UIColor.blueColor()
            NSLog("Wrong") // where you say the question is wrong
           // checkCorrect = false
        }
        NSLog(String(checkCorrect))
        button4Count = button4Count + 1
        NSLog("Button 4 = " + String(button4Count))
    }

  

}

