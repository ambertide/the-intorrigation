VAR Knows_Markov = false
VAR calm = 0
"Welcome to Zlyarosk Detention Facility..." The prison guard greets you, holding a gas lamp in his right hand and adjusting his glasses with his left, "Even though I don't understand why would a lawyer come here directly from the Imperial Capital Sankt Yekaterinsburg..."
* "This is none of your concern[."], I do not think a person of such low rank would understand the reasons behind our intervention to this case." You say, man answers, "Sorry for my distirpect, I apoligize." He shows you the the cell of the suspect and leaves.
* "Government looks after its veterans[."] as you may now, Mr. Larkov Serovich was a combatatant in the Liberation of Hell, the Ministry of Defence wants to make sure every veteran is looked after well, I was merely passing through the area, so I was appointed."

    The man's eyes light up, "Oh yes, I was actually a part of the war as well, I was in the Malebolgian front, I think Mister Serovich was infact in the..." "Qaracevher Front." you complete. Man nods, and shows you the way as you speak about the Campaign of the Gates, he opens the cell door and before he leaves, he tells you, "If you'd ever like to find me, my name is Markov Rurovich, you can find me if you need any help arround the town." you nod your head, "Of course, thank you." you shake his hand and he goes to his way.
        ~Knows_Markov = true

- As the cell door closes, you grab a chair and sit in front of an old man, his head looks down to the table and inbetween his hands, you can hear faint rumbling in a dialect of Novosibirskian you faintly remember hearing during the war, you sit down, look at the man and speak.
    
* "Mr. Serovich?"
    He starts to raise his head slowly, <>
    ~calm = calm + 1
* "Mr. Serovich!"
    He jumps in his chair and looks at you, bewildered, <>

- Serovich has a white, messy and dirty beard, his eyes are full of fear and despair, he rumbles on, as he looks at you.

* "I am here, for the murder of... [."] Ivan Norovich, did you know him?" you ask to the man, a stern look in your eyes, he continues to look at you, helpless as before and rumbles.

* "Are you allright sir[?"], you seem a bit, distressed?" man looks at you, a little less confused, "Yes... I just, can't... get them out off.."
    ~ calm = calm + 1

- "The blood, the limbs all around, they came down from the sky cuttin' us half. Shining light of the lost promise..." He looks at you, almost awaiting an answer, which you don't have.

* "I need to question you, if you want to live[."], you need to answer me." Look of despair in his eyes deepens as he practically begs, "No. Please don't kill us o' mother, we are here fightin' for our country, please."

* "Would you like some time alone[."] I do need to talk with you, but if you think you can't talk, I can just use the case files. This would actually make your defense harder though..."
    ~ calm = calm + 1

- {calm == 3: After fifteen minutes of silence, as you are about to leave, Serovich breaks the silence, "I... I will speak..."  | He says no more, so after fifteen minutes of pure silence, you get up and get out of the door to the freezing Zlyarosk night... -> END}

* {calm == 3} "Very well[..."], please tell me everything you can, I will need everything you know." He nods and looks at you, with even more despair, "I did nothing, the police think that I killed just because we argued, I did not. I fought with Ivan Norvich during 
    la libération, a soldier does not kills his comrades... True, I hated the man, but I will never kill someone after... seeing them come down?
    ** "Them[?"], who are them?" "The Angels." Man spokes wildly, "When we fought, when we... We were in River Nyx when they came down... They butchered us... I can't get them out of my mind... I just can't... the limbs... the dead... the blood..." and he rumbles on. Your attempts to 
    ** "Please stay on topic sir[."], we don't have much time." "I would never do such a think, even though I hated him to my guts, he was going to take me to Chelya, to visit the memorial, why would I kill him. We were gonna pay respects to our fallen friends.

- -> END