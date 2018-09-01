VAR Knows_Markov = false
VAR calm = 0
VAR knows_about_trauma = false
VAR knows_about_chelya = true
VAR knows_the_file = false
VAR jury_guilty = 0

"Welcome to Zlyarosk Detention Facility..." The prison guard greets you, holding a gas lamp in his right hand and adjusting his glasses with his left, "Even though I don't understand why would a lawyer come here directly from the Imperial Capital Sankt Yekaterinsburg..."
* "This is none of your concern[."], I do not think a person of such low rank would understand the reasons behind our intervention to this case." You say, man answers, "Sorry for my distrespect, I apoligize." He shows you the the cell of the suspect and leaves.
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

- {calm == 3: After fifteen minutes of silence, as you are about to leave, Serovich breaks the silence, "I... I will speak..."  | He says no more, so after fifteen minutes of pure silence, you get up and get out of the door to the freezing Zlyarosk night... -> home}

* {calm == 3} "Very well[..."], please tell me everything you can, I will need everything you know." He nods and looks at you, with even more despair, "I did nothing, the police think that I killed just because we argued, I did not. I fought with Ivan Norvich during 
    la libération, a soldier does not kills his comrades... True, I hated the man, but I will never kill someone after... seeing them come down?
    ** "Them[?"], who are them?" "The Angels." Man spokes wildly, "When we fought, when we... We were in River Nyx when they came down... They butchered us... I can't get them out of my mind... I just can't... the limbs... the dead... the blood..." and he rumbles on. Your attempts to interject the conversation is rejected.
        ~ knows_about_trauma = true
    ** "Please stay on topic sir[."], we don't have much time." "I would never do such a think, even though I hated him to my guts, he was the only person willing to to take me to Chelya, to visit the memorial, why would I kill him. We were gonna pay respects to our fallen friends.
        ~ knows_about_chelya = true

- -> courthouse

== home ==
You go to the nearby inn, where you stay for the night, you can't eat anything, as the stress of the trial is too much to handle, you go up, with the case file in your hand, should you read it?

* You read the case file[.], putting your gas lamp to the side, there is not much to note in the file, but even a single detail, may save Serovich.
    ~ knows_the_file = true
* You sleep[.], the day was tiring, you can't be bothered by this.

- -> courthouse

== courthouse ==

You enter the courthouse, and take a look at the scenery, Serovich is there, in chains, looking as desperate as ever, {Knows_Markov: Markov | that prision guard} is there as well, {Knows_Markov: Markov greets you with a nod| the guard looks at you with a pesky look}. 

Then you see who is leading the defense, Peter von Tieselburg, the most feared prosecuter in all of Novosibirski, it is told in every case he has undertaken, someone got into the prison. If he is here, all the way from Sankt Yekaterinsburg, it means he must have sent by the Ministry of Justice, most likely to make sure murder of one of their veterans wasn't left without a verdict, which is dishartening. 

At least the judge and the jury is local, this will be a fight between you and von Tieselburg.

It is the prosecutions turn first, von Tieselburg calls {Knows_Markov: "Markov" | "A man named Markov Rurovich"} as the first, and only witness.

* {Knows_Markov} [Listen to what Markov has to say.] Markov goes to the stand and speaks, he tells that they found Serovich in the close vicinity of Norovich's body, and goes on to tell the details of the crime. He is rather neatural on the matter when von Tieselburg asks if Saravoich is the one who kiled Norovich however.
* {Knows_Markov == false} [Listen to Mr. Rurovich's testimony.] Rurovich tells the details of the crime, when von Tieselburg questions if he believes Serovich has killed the man, Rurovich says he believes so.
    ~ jury_guilty = jury_guilty + 1

- Judge turns to you, "Does the defense have a question to Mister Rurovich?"

* {knows_the_file} "Yes[."] your honor." You say, and walk towards Rurovich, Mister Rurovich, when you found the body, according to the case file, the blade used was made of damascus steel, is that correct?" Rurovich nods, "Now, Mister Serovich couldn't have used the blade." von Tieselburg interrupts you, "Why is that?"
    ** {knows_about_trauma} "Because Damascus steel has ties to angels, and the man is traumatised[."] by them, he couldn't have got closer to the steel, let alone using it! von Tieselburg intervenes, "This is an outrage! This is just pure speculation."
        ~jury_guilty = jury_guilty - 1
        *** {Knows_Markov} Markov interrupts[.], "Not really sir. Allow me to say a few words, during the war, during that Battle of the Wuthering City, angels came down from the sky, they killed many, and to one of them, no weapon was useful but one..." "Damascus Steel." you complete, Rurovich nods, "Even now, I can't get close to that steel, hearing of it makes me want to vomit, no way someone as traumatised by angels to get even close to it." von Tieselburg is furious but he doesn't speak.
            ~ jury_guilty = jury_guilty - 1
    ** "It is not cheap[."] you say, "No way a person as poor as mister Serovich could have find such a weapon." von Tieselburg speaks, "Perhaps the weapon was found in mister Norovich's house. Surely, a murderer can be a thief as well." Jury starts to speak in between themselves.
        ~ jury_guilty = jury_guilty + 1
*{knows_the_file == false} "No sir."[] you say.

- Judge goes on, "Does the defense have a witness?"

* {Knows_Markov} "Yes[."], your honor, the defense calls mister Markov Rurovich." Rurovich talks about the war and how a trauma may cause the man to speak about death and blood so muchi he says that the reason of the man's rumblings may very well be war.
    ~jury_guilty = jury_guilty - 1
* {Knows_Markov == false} "No[."] your honor, defense calls no one."

- "Well, the judge says... Jury may think about the case now." Jury steps out of the room thinking about the case.

* [How long will this last?]

After what may seem like forever, Jurry gets back in, "Did the jury arrived at a verdict?" asks the judge, spokeswoman clears her throat and speaks.

"Yes we did."

Spokeswoman clears her thoary and speaks:
* {jury_guilty > -3} "We find Mr.Serovich[..."] guilty." woman declares. As they drag Serovich out of the courtroom to the prison, you walk out, to the could Novosibirskian night and you don't help but to smile a little. Afterall, with Serovich in prison, no one would dig into the case anymore, and surely... No one would suspect a lawyer from Sankt Yekaterinsburg to be behind this murder...
    -> END
    
* {jury_guilty == -3} "We find Mr. Serovich[..."] not guilty." woman declares. von Tieselburg is looking really angry, as if he is about to yell at the court. But then, to your dismay, his face changes... from anger to... victory? How could this be... von Tieselburg motions to the Judge. "Sir, may the prosecution call the defense attorney to the stand?"

    the room freeze, judge looks puzzled, "But... is this legal?"
    
    ** "No it is not!" [] you interrupt, rather angerilly. "According to the fifth article of the Novosibirskian Penal Law, should  the prosecution has ample evindence that someone within the room may have provide further proof regarding the matter, the prosecution or the defence may call that person to the stand." You stare angerilly, Judge looks at both of you than approves. "Sure Tieselburg, go ahead." Tieselburg calls you to the stand. Without much you can do, you take your stand. Tieselburg clears his throat, and asks you: "How did you know about the knife made of damascus steel."
        *** "It was in the report." [] you say. von Tieselburg shakes his head, no it wasn't. Your head starts to feel dizzy... "Oh..." von Tieselburg continues, "Where were you in the night of October, 14?" you stay silent... you can hear the rush of police, putting on handcuffs...
            -> tieselburg_solves_the_case
            
== tieselburg_solves_the_case ==

As they rush you to the police cab waiting outside, the cold Novosibirskian night, freezes you. It freezes what is left of your soul. You tried to dance with Peter von Tieselburg and it seems you failed. In any case though, you will have a long time, thinking about the mistakes you did in the case... Perhaps, you should have let Serovich to take the fall... Perhaps... 

-> END