IDEAL

; programer name :   Snowflk.asm by Ben Kadaner

MODEL small

STACK 100h



 Macro SHOW_M
	 mov ax, 1
	 int 33h
	 
endM
	 
Macro HIDE_M
	 mov ax, 2
	 int 33h
endM
	 
Macro CHECK_M
	 mov ax, 3
	 int 33h
endm
	 
Macro pushAll
	push ax
	push bp
	push bx
	push dx
	push cx
	push di
	push ds
endM

Macro Resetall
	mov [IsOnDL],0
	mov [IsOnUL],0
	mov [IsOnDR],0
	mov [IsOnUR],0
	mov [IsOnNan],0	
endM

Macro popAll
	
	pop ds
	pop di
	pop cx
	pop dx
	pop bx
	pop bp
	pop ax
	
endM
	 FILE_NAME_Tech2End  equ 'GamePic\end\T2.bmp'
	 FILE_NAME_Tech3End  equ 'GamePic\end\T3.bmp'
	 FILE_NAME_Tech1End  equ 'GamePic\end\T1.bmp'
	 
	 FILE_NAME_Tech2  equ 'GamePic\garten\Tech\KFC\T1.bmp'
	 FILE_NAME_Tech3Happy  equ 'GamePic\garten\Tech\Secrat\Happy.bmp'
	 FILE_NAME_Tech1Shadow  equ 'GamePic\garten\Tech\Splinter\T1.bmp'
	 
	 FILE_NAME_Tech2Song  equ 'GamePic\garten\Tech\KFC\T2.bmp'
	 FILE_NAME_Tech3Blush  equ 'GamePic\garten\Tech\Secrat\Blush.bmp'
	 FILE_NAME_Tech1Normal  equ 'GamePic\garten\Tech\Splinter\T2.bmp'
	 
	 FILE_NAME_School  equ 'GamePic\garten\back\School.bmp'
	 FILE_NAME_SummerBreak  equ 'GamePic\garten\back\TImeScol.bmp'
	 FILE_NAME_TimeSkip  equ 'GamePic\garten\back\TimeSkip.bmp'
	 FILE_NAME_Equation  equ 'GamePic\garten\Qwastion.bmp'
	 FILE_NAME_Answer  equ 'GamePic\garten\Answer.bmp'
	 FILE_NAME_StarteOfTheGame  equ 'GamePic\Opaning.bmp'
	 FILE_NAME_HumanKillAll  equ 'GamePic\end\kill.bmp'
	 FILE_NAME_HumanKillYou  equ 'GamePic\end\nowYou.bmp'
	 FILE_NAME_TheEnd  equ 'GamePic\end\TheEnd.bmp'
	 FILE_NAME_SnowyForst  equ 'snowfrst.bmp'
	 FILE_NAME_SansInTheSnowForst  equ 'GamePic\sans.bmp'
	 FILE_NAME_TorielMeetsFrisk  equ 'GamePic\garten\toriel\tMeetF.bmp'
	 FILE_NAME_Kids  equ 'GamePic\garten\AllKids.bmp'
	 FILE_NAME_TorielPie  equ 'GamePic\garten\toriel\pie.bmp'
	 FILE_NAME_AlphysIsEmbarase  equ 'GamePic\garten\alphys\embarase.bmp'
	 FILE_NAME_TheKindergarten  equ 'GamePic\garten\back\place.bmp'
	 FILE_NAME_TheHumanTakeASpech  equ 'GamePic\garten\back\Spich.bmp'
	 FILE_NAME_Wd0  equ 'GamePic\garten\back\wd0.bmp'
	 FILE_NAME_Wd1  equ 'GamePic\garten\back\wd1.bmp'
	 FILE_NAME_Wd2  equ 'GamePic\garten\back\wd2.bmp'
	 FILE_NAME_Wd3  equ 'GamePic\garten\back\wd3.bmp'
	 FILE_NAME_Wd4  equ 'GamePic\garten\back\wd4.bmp'
	 FILE_NAME_Class  equ 'GamePic\garten\back\class.bmp'
	 FILE_NAME_PapyrusIsEmbarase  equ 'GamePic\garten\papyrus\embarase.bmp'
	 FILE_NAME_EvryoneEatsPasta  equ 'GamePic\garten\back\pasta.bmp'
	 FILE_NAME_PastaEatingContest  equ 'GamePic\garten\back\eatPasta.bmp'
	 FILE_NAME_UndyneInAFightingPose  equ 'GamePic\garten\Undyne\Fight.bmp'
	 FILE_NAME_UndyneFamaly  equ 'GamePic\garten\Undyne\Famaly.bmp'
	 FILE_NAME_UndyneIsSad  equ 'GamePic\garten\Undyne\cry.bmp'
	 FILE_NAME_UndyneHappy  equ 'GamePic\garten\Undyne\Happy.bmp'
	 FILE_NAME_SansLookTotheSide  equ 'GamePic\garten\Sans\Lookside.bmp'
	 FILE_NAME_SansIsConfused  equ 'GamePic\garten\Sans\confused.bmp'
	 FILE_NAME_UndyneIsAngry  equ 'GamePic\garten\Undyne\angry.bmp'
	 FILE_NAME_AllTheKids  equ 'GamePic\garten\AltheKid.bmp'
	 FILE_NAME_WDGaster  equ 'GamePic\garten\back\WD.bmp'
	 FILE_NAME_Text  equ 'GamePic\Text.bmp'
	 FILE_NAME_ChoseDL  equ 'GamePic\NewDL.bmp'
	 FILE_NAME_ChoseDR  equ 'GamePic\NewDR.bmp'
	 FILE_NAME_ChoseUL  equ 'GamePic\NewUL.bmp'
	 FILE_NAME_ChoseUR  equ 'GamePic\NewUR.bmp'
	 FILE_NAME_ChoseNan  equ 'GamePic\NewNan.bmp'
	 FILE_NAME_ChoseQ  equ 'GamePic\Nan.bmp'

	 FILE_NAME_Letter?  equ 'GamePic\Letters\quastion.bmp'
	 FILE_NAME_LetterApostro  equ 'GamePic\Letters\apostro.bmp'
	 FILE_NAME_LetterDot equ 'GamePic\Letters\dot.bmp'
	 FILE_NAME_LetterDash equ 'GamePic\Letters\dash.bmp'
	 FILE_NAME_LetterComma equ 'GamePic\Letters\comma.bmp'
	 FILE_NAME_LetterExclamation equ 'GamePic\Letters\exclam.bmp'
	 FILE_NAME_LetterSmall equ 'GamePic\Letters\Pixil-##.bmp'
	 FILE_NAME_LetterBig equ 'GamePic\Letters\Pixil-#.bmp'

	 
	 
	;ChoseDL 
	 SCREEN_WIDTH = 320
	BMP_MAX_WIDTH = SCREEN_WIDTH
	BMP_MAX_HEIGHT = 200

	SMALL_BMP_HEIGHT = 48
	SMALL_BMP_WIDTH = 78




	MaxFloodStackDepth = 50

	Fill_Color = 8
	Fill_Color_Border = 0
	 
	 
DATASEG	

	 ;BMP File data
	
	PicTech1Normal	 db FILE_NAME_Tech1Normal ,0
	PicTech3Blush	 db FILE_NAME_Tech3Blush ,0
	PicTech2Song	 db FILE_NAME_Tech2Song ,0
	
	PicTech1Shadow	 db FILE_NAME_Tech1Shadow ,0
	PicTech3Happy	 db FILE_NAME_Tech3Happy ,0
	PicTech2	 db FILE_NAME_Tech2 ,0
	 
	PicTech1End	 db FILE_NAME_Tech1End ,0
	PicTech3End	 db FILE_NAME_Tech3End ,0
	PicTech2End	 db FILE_NAME_Tech2End ,0
	PicSchool	 db FILE_NAME_School ,0
	PicSummerBreak	 db FILE_NAME_SummerBreak ,0
	PicTimeSkip	 db FILE_NAME_TimeSkip ,0
	PicEquation	 db FILE_NAME_Equation ,0
	PicAnswer	 db FILE_NAME_Answer ,0
	PicClass	 db FILE_NAME_Class ,0
	PicWd0	 db FILE_NAME_Wd0 ,0
	PicWd1	 db FILE_NAME_Wd1 ,0
	PicWd2	 db FILE_NAME_Wd2 ,0
	PicWd3	 db FILE_NAME_Wd3 ,0
	PicWd4	 db FILE_NAME_Wd4 ,0
	PicTheHumanTakeASpech	 db FILE_NAME_TheHumanTakeASpech ,0
	PicHumanKillAll	 db FILE_NAME_HumanKillAll ,0
	PicHumanKillYou	 db FILE_NAME_HumanKillYou ,0
	PicTheEnd	 db FILE_NAME_TheEnd ,0
	PicStarteOfTheGame	db FILE_NAME_StarteOfTheGame ,0
	PicAlphysIsEmbarase	db FILE_NAME_AlphysIsEmbarase ,0
	PicPapyrusIsEmbarase	db FILE_NAME_PapyrusIsEmbarase ,0
	FileNameSnowyForst	db FILE_NAME_SnowyForst ,0
	FileNameSansInTheSnowForst	db FILE_NAME_SansInTheSnowForst ,0
	PicTorielMeetsFrisk	db FILE_NAME_TorielMeetsFrisk ,0
	PicTorielPie	db FILE_NAME_TorielPie ,0
	PicSansLookTotheSide	db FILE_NAME_SansLookTotheSide ,0
	PicUndyneInAFightingPose	db FILE_NAME_UndyneInAFightingPose ,0
	PicSansIsConfused	db FILE_NAME_SansIsConfused ,0 
	PicUndyneIsAngry	db FILE_NAME_UndyneIsAngry ,0
	PicUndyneIsHappy	db FILE_NAME_UndyneHappy ,0
	PicUndyneIsSad	db FILE_NAME_UndyneIsSad ,0
	PicUndyneAndHerFamaly	db FILE_NAME_UndyneFamaly ,0
	PicTheKindergarten	db FILE_NAME_TheKindergarten ,0
	PicEvryoneEatsPastan	db FILE_NAME_EvryoneEatsPasta  ,0
	PicPastaEatingContest	db FILE_NAME_PastaEatingContest  ,0
	PicAllTheKids	db FILE_NAME_AllTheKids ,0
	PicKids	db FILE_NAME_Kids ,0
	PiWDGaster	db FILE_NAME_WDGaster ,0
	FileNameText	db FILE_NAME_Text,0
	FileNameChoseDL	db FILE_NAME_ChoseDL,0
	FileNameChoseDR	db FILE_NAME_ChoseDR,0
	FileNameChoseUL	db FILE_NAME_ChoseUL,0
	FileNameChoseUR	db FILE_NAME_ChoseUR,0
	FileNameChoseQ db FILE_NAME_ChoseQ,0
	FileNameChoseNan	db FILE_NAME_ChoseNan,0
	
	Letter_Small db FILE_NAME_LetterSmall,0
	Letter_Big db FILE_NAME_LetterBig,0
	
	Letter_?	db FILE_NAME_Letter?,0
	Letter_Apostrophe	db FILE_NAME_LetterApostro,0
	Letter_Dot	db FILE_NAME_LetterDot,0
	Letter_Dash	db FILE_NAME_LetterDash,0
	Letter_Comma	db FILE_NAME_LetterComma,0
	Letter_Exclamation	db FILE_NAME_LetterExclamation,0
	
	
	
	
	FileHandle	dw ?
	Header 	    db 54 dup(0)
	Palette 	db 400h dup (0)
	 
	 
	Color db ?
	Xclick dw ?
	Yclick dw ?
	Xp dw ?
	Yp dw ?
	SquareSize dw ?
	GotClick db ?
	
	BmpLeft dw ?
	BmpTop dw ?
	BmpWidth dw ?
	BmpHeight dw ?
	
	ErrorFile db 0
	 
	 ScrLine 	db BMP_MAX_WIDTH dup (0)
	 
	  hight dw 50
	 upOrDown db 1
	 
	 UOrD db 0
		
	LOrR db 0
	 
	 
	 neadToChangeUL db 0
	 neadToChangeDL db 0
	 neadToChangeUR db 0
	 neadToChangeDR db 0
	 neadToChangeNan db 0
	 
 	 IsOnUL db 0
	 IsOnDL db 0
	 IsOnUR db 0
	 IsOnDR db 0
	 IsOnNan db 0 
	 textIson db 0
	 
	 TextMode db 0
	 
	 
	 ;sans a fany kid that love pans, hotdogs and can do magic
	 SansLikability db 0

	; the morw anoing version of sanse wiche is obsese withe pasta and pazelse
	 PapyrusLikability db 0
	 
	;a mother figeur
	 TorielLikability db 0
	 
	 ;a close frend
	 UndyneLikability db 0
	 
	 ; a teacher?
	 AlphysLikability db 0

	 ; the creepy kid
	 WDGasterLikability db 0
	 
	 
	 
	 SansLikabilityAddButon1 db 0

	 PapyrusLikabilityAddButon1 db 0
	 
	 TorielLikabilityAddButon1 db 0
	 
	 UndyneLikabilityAddButon1 db 0
	 
	 AlphysLikabilityAddButon1 db 0
	 
	 WDGasterLikabilityAddButon1 db 0
	 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	 SansLikabilityAddButon2 db 0

	 PapyrusLikabilityAddButon2 db 0
	 
	 TorielLikabilityAddButon2 db 0
	 
	 UndyneLikabilityAddButon2 db 0
	 
	 AlphysLikabilityAddButon2 db 0
	 
	 WDGasterLikabilityAddButon2 db 0
	 
	 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	 SansLikabilityAddButon3 db 0
	 
	 PapyrusLikabilityAddButon3 db 0
	 
	 TorielLikabilityAddButon3 db 0
	 
	 UndyneLikabilityAddButon3 db 0
	 
	 AlphysLikabilityAddButon3 db 0
	 
	 WDGasterLikabilityAddButon3 db 0
	 
	 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	 SansLikabilityAddButon4 db 0

	 PapyrusLikabilityAddButon4 db 0
	 
	 TorielLikabilityAddButon4 db 0
	 
	 UndyneLikabilityAddButon4 db 0
	 
	 AlphysLikabilityAddButon4 db 0

	 WDGasterLikabilityAddButon4 db 0
	 
	 Text_TorielMeetsFrisk db "Hello little one, and welcome to your new kindergarten Snowflake. My name is Toriel and I will be your kindergarten teacher.$"
	 Text_TorielIntroduceTheKids db "Those will be your classmates. From left to right there is Papyrus, Sans, Undyne and Alphys.$"
	 Text_TorielTellTheKidToSayHello db "Say hello everyone and introduce yourself please.$"
	 
	 Text_PapyrusSayHello db "Hello human, I'm the great Papyrus. I'm Sans's little brother and I LOVE PASTA.$"
	 Text_SansSayHello db "Hello kiddo, I'm Sans. Sans the skeleton. I'm the most reliable kid in this place not like the one on my left she looks a bit fishy. He He He.$"
	 Text_UndyneSayHello db "Hello human, I'm Undyne. Forget about those idiots they are always like that. You can say I'm the captain of this place.$"
	 Text_SansThisAgreeWitheUndyne db "No you'r not.$"
	 Text_ShutUp db "Shut up$"
	 Text_OK db "OK$"
	 Text_SansTellAlphyseToSayHello db "Hey yellow Charmander say hello to the human.$"
	 Text_AlphysSayHello db "Ha me? ok. Hey, my name is Alphys.$"
	 
	 Text_TorielInviteTheKidToEat db "Okay everyone let's go eat.$"
	 Text_FoodTime db "yayy food time!$"
	 Text_PapyroseMadePasta db "I made my favorite, PASTA. Human, I hope you would like it.$"
	 Text_TorielAskWhatIsAvryoneFaivoritFood db "Hey, why don't everyone will say what is their favorite food.$"
	 Text_TorielFaivoritFood db "My favorit food is pie.$"
	 Text_PapyrosFaivoritFood db "Of Course, mine will be the ultimate food, PASTA.$"
	 Text_UndyneFaivoritFood db "I like only the slurpiest food and that's why my favorite food is udon.$"
	 Text_AlphysFaivoritFood db "Well I guess my favorite food is mocha ice and matcha kit-kats.$"
	 Text_SansFaivoritFood db "My favorite food is ketchup but what I want to know is what the human likes to eat?$"
	 Text_btn1_food_torial&FriskFavorit db "well it looks like we have a prety simoular favorit.$"
	 Text_btn1_food_UndyneIsSoprise db "Realy human do you not like the taste of fresh blood.$"
	 Text_btn1_food_SanstolkBack db "jeez, she is a human not a vampire like you.$"
	 Text_btn1_food_UndynetolkBack db "I'M NOT A VAMPIRE!$"
	 Text_btn1_food_sanstolkBackagain db "Ya then when's the last time you went to the dantis to check on those fangs you little Count Chocula.$"
	 Text_btn1_food_TorielInterapt db "Hey that was rude both of you calm down.$"
	 Text_btn2_food_UndyneIsSad db "Fish? how could you.$"
	 Text_btn2_food_UndyneFakeBakeStory db "When I was younger my parents got caught by humans. And when I found them they were nothing more than a can of sardines.$"
	 Text_Sike db "Sike$"
	 Text_Damn db "Damn$"
	 Text_Yes db "Yes$"
	 Text_Ofcourse db "Of course$"
	 Text_Yep db "Yep$"
	 Text_Jesus db "Jesus$"
	 Text_btn2_food_Sanse db "Told You She is fishy.$"
	 Text_Lough db "Ha Ha Ha$"
	 Text_btn2_food_Toriel db "That was not ok.$"
	 TEXT_btn3_food_PapyrosIsSopraised db "Pasta? did you jest say pasta? I can't belive it.$"
	 TEXT_btn3_food_PapyrosIsFantasizing db "I can already imagen all of us eating together lots and lots of pasta. I'M SO EXITED.$"
	 TEXT_btn3_food_AlphysWantToJoin db "ha, Where... Where am I in this? of course I will understand if you don't want me there.$"
	 TEXT_btn3_food_PapyrosIsAmberesed db "ha Well, I did invite you just ha you left early? yes you left early.$"
	 TEXT_HaOk db "Ha ok$"
	 TEXT_btn3_food_SansIsConfused db "Am I the only one that notised that she can sea Papyrus imaginashan?$"
	 TEXT_btn3_food_AlphysDodgeTheQuastion db "Well, Papyrus is very predictable, and it's obvious that all of you won't invite me to any of your parties.$"
	 TEXT_btn3_food_Toriel db "Don't say that. I am sure everyone here wants to invite you to their parties. Am I right kids?$"
	 TEXT_btn3_food_AlphysThanks db "ha well if you say so. Thank you very mach.$"
	 TEXT_LetsStartEat db "Let's start eat.$"
	 TEXT_btn4_food_SansIsBord db "Well, that's a boring answer.$"
	 TEXT_btn4_food_PapyrosIsQirias db "What?! Do humans don't eat?$"
	 TEXT_btn4_food_UndyneIsGettingHangry db "Of course they eat food, you idiot. I think, do they?$"
	 TEXT_btn4_food_Toriel db "First of all Undyne, you have to keep your language and secondly yes, humans do eat food.$"
	 TEXT_btn4_food_Alphys db "Human ahh what... what do humans eat?$"
	 
	 
	 
	 TEXT_Really db "Really?$"
	 TEXT_btn1_eat_Undyne db "Well, I guess there's not a big difference between us.$"
	 TEXT_btn2_eat_HumansDiffrens db "What really is the difference between us?$"
	 TEXT_btn2_eat_HumansUndyne db "Undyne you can breathe underwater$"
	 TEXT_btn2_eat_HumansSkeletons db "Papyrus and Sans you two are basically just humans without organs and measles and you are in minecraft.$"
	 TEXT_btn2_eat_HumansAnimals db "Alphys and Toriel you are just big animals. one is a lizard and the other is just a goat, you are just demi-humans.$"
	 TEXT_btn2_eat_Humans db "So besides that, we are basically the same.$"
	 TEXT_ThatsRight db "that's right.$"
	 TEXT_btn2_eat_Toriel db "it was a splendid answer little one. I liked it very much good job.$"
	 TEXT_btn2_eat_Everyone db "WOW! Ya that's right.$"
	 TEXT_btn3_eat_Toriel db "Don't be silly, you would scare the others.$"
	 TEXT_btn3_eat_Human db "who said I was kidding...$"
	 TEXT_btn4_eat_Human db "I don't want to answer.$"
	 TEXT_btn4_eat_Alphys db "Ok you don't have to answer. Sorry.$"
	 TEXT_btn4_eat_Toriel db "You have nothing to be sorry for. I will answer for the little one. Humans eat the same food that we eat.$"
	 TEXT_btn_eat_Alphys db "ha OK Tha... Thank you.$" 
	 
	 TEXT_TorielGoToPlay db "OK kid you can go now to play outside.$"
	 TEXT_PlayTime db "Yay Play time!$"
	 
	 TEXT_PlayTime_like_1 db "You know what kiddo your not that bad.$"
	 TEXT_PlayTime_like_2 db "Ya, I think I'm starting to like you a bit.$"
	 TEXT_PlayTime_Dontlike_1 db "You know what kiddo I don't really like you.$"
	 TEXT_PlayTime_Dontlike_2 db "I don't know why but I don't like you not even a bit$"
	 
	 TEXT_btn1_Play_1 db "Boooo!$"
	 TEXT_btn1_Play_2 db "haaa Jesus, you scared me.$"
	 TEXT_btn1_Play_3 db "Kiddo why didn't you tell me anything.$"
	 TEXT_btn1_Play_4 db "Don't be upset with the human, it was just a little help.$"
	 TEXT_btn1_Play_like_1 db "Well fine after all snitches get stitches.$"
	 TEXT_btn1_Play_Dontlike_1 db "Ya, I was right. I really don't like you.$" 
	 
	 TEXT_btn2_Play_1 db "What Who?$"
	 TEXT_btn2_Play_2 db "Ho WD what's up$"
	 TEXT_btn2_Play_3 db "I was good before she snitched on me.$"
	 TEXT_btn2_Play_like_1 db "Don't sweat it, she just didn't know you.$"
	 TEXT_btn2_Play_like_2 db "Ya, maybe$"
	 TEXT_btn2_Play_Dontlike_1 db "Ya, it was not cool but thanks human.$"
	 
	 TEXT_btn3_Play_1 db "Hello$"
	 TEXT_btn3_Play_2 db "hey$"
	 TEXT_btn3_Play_3 db "WD what are you doing here?$"
	 TEXT_btn3_Play_4 db "well, I wanted to scare you but it didn't work.$"
	 TEXT_btn3_Play_5 db "Oh I'm sorry$"
	 TEXT_btn3_Play_6 db "Don't worry I will have many more tries.$" 
	 
	 
	 TEXT_btn4_Play_1 db "psss Sans there's someone very scary behind you.$"
	 TEXT_btn4_Play_like_1 db "Wha... what? who is it?$"
	 TEXT_btn4_Play_like_2 db "I don't know but he doesn't look very nice.$"
	 TEXT_btn4_Play_like_3 db "Am... Am I gonna die.$"
	 TEXT_btn4_Play_like_4 db "No, don't worry he is not gonna kill you.$"
	 TEXT_btn4_Play_like_5 db "OK, let's do this, on my count we attack.$"
	 TEXT_btn4_Play_like_6 db "ready? one-two attack.$"
	 TEXT_btn4_Play_like_7 db "Haaaa ho wait it is just wd.$"
	 TEXT_btn4_Play_like_8 db "what's up.$"
	 TEXT_btn4_Play_like_9 db "Not much you just scared the shit out of me.$"
	 TEXT_btn4_Play_like_10 db "Well, I planned to scare you from behind, but it looks like the human here made it better.$"
	 TEXT_btn4_Play_Dontlike_1 db "Ya like I will believe you.$" 
	 
	 TEXT_PlayTime_GetTogether_1 db "Sans by the way who is it?$"
	 TEXT_PlayTime_GetTogether_2 db "That's the new kid Toriel told us about.$"
	 TEXT_PlayTime_GetTogether_3 db "Ho That's right.$"
	 TEXT_PlayTime_GetTogether_4 db "If you would have come to the meeting this morning you would have known.$"
	 TEXT_PlayTime_GetTogether_5 db "Sorry I was busy.$"
	 TEXT_PlayTime_GetTogether_6 db "busy? what have you done?$"
	 TEXT_PlayTime_GetTogether_7 db "Me? I was just burning ants with a magnifying glass.$"
	 TEXT_PlayTime_GetTogether_8 db "Of course you did, you weirdo.$"
	 TEXT_PlayTime_GetTogether_9 db "kiddo this is W. D. Gaster he is one of the kids in the kindergarten.$"
	 TEXT_PlayTime_GetTogether_Like_1 db "hey human we should go scare others togethers.$"
	 TEXT_PlayTime_GetTogether_Like_2 db "Ho god.$"
	 TEXT_PlayTime_GetTogether_DontLike db "human, please do not destroy my awesome pranks.$"
	 TEXT_PlayTime_GetTogether_DontLikeLike db "hey, don't be like that, The kiddo is cool.$"
	 TEXT_PlayTime_GetTogether_10 db "Kids, playtime is over.$"
	 
	 TEXT_Simulation_1 db "Ok kids because next year you will go to school we are going to do a demonstration on school life.$"
	 TEXT_Simulation_3 db "Ho no, I don't want to go to school.$"
	 TEXT_Simulation_4 db "Ya me too.$"
	 TEXT_Simulation_5 db "I actually want to go to school, it sounds fun.$"
	 TEXT_Simulation_6 db "Nerd!$"
	 TEXT_Simulation_7 db "SANS! Watch your language.$"
	 TEXT_Simulation_8 db "Sorry sorry.$"
	 TEXT_Simulation_9 db "I agree with Alphys$"
	 TEXT_Simulation_10 db "Really?$"
	 TEXT_Simulation_11 db "Yes, it will be super fun to prank the new kids and the teachers too. I'm so excited.$"
	 TEXT_Simulation_12 db "why I'm not surprised$"
	 TEXT_Simulation_14 db "Little one are you excited about school?$"
	 
	 TEXT_btn1_Simulation_1 db "That's very good.$"
	 TEXT_btn1_Simulation_TorielLike db "I'm sure you would do splendidly.$"
	 TEXT_btn1_Simulation_AlphysLike db "I... I hope we two will be in the same class.$"
	 TEXT_btn1_Simulation_AlphysDontLike_1 db "I hope that we will all be at least at the same school.$"
	 TEXT_btn1_Simulation_AlphysDontLike_2 db "Yes, that will be AMAZING if we will be at the same school.$"
	 TEXT_btn1_Simulation_AlphysDontLike_3 db "Ya, I would love that too.$"
	 TEXT_btn1_Simulation_AlphysDontLike_4 db "I won't$"
	 TEXT_btn1_Simulation_AlphysDontLike_5 db "Undyne!$"
	 TEXT_btn1_Simulation_AlphysDontLike_6 db "I was joking, I was joking.$"
	 TEXT_btn1_Simulation_AlphysDontLike_7 db "Of course you were.$"
	 
	 TEXT_btn2_Simulation_UndyneLike db "I agree with you human.$"
	 TEXT_btn2_Simulation_TorielLike db "I'm sure you two will like it.$"
	 TEXT_btn2_Simulation_1 db "Ya, I agree with the kiddo.$"
	 TEXT_btn2_Simulation_2 db "Me too, the human is right.$"
	 TEXT_btn2_Simulation_3 db "Don't be so pessimistic it will be fun.$"
	 TEXT_btn2_Simulation_4 db "It will be amazing!$"
	 TEXT_btn3_Simulation_1 db "Ouch$"
	 TEXT_btn3_Simulation_2 db "well, in that case, we are waiting to leave you too.$"
	 TEXT_btn3_Simulation_3 db "Undyne don't talk like that and little one you too should watch your language.$"
	 TEXT_btn3_Simulation_AlphysLike db "Well, I... I'm having a lot of fun with you.$"
	 TEXT_btn3_Simulation_WDLike_1 db "Human, don't be like that. I like you.$"
	 TEXT_btn3_Simulation_WDLike_2 db "Simp.$"
	 TEXT_btn4_Simulation_1 db "I'm very happy to hear that you like it here but eventually, you would have to move to school.$"
	 TEXT_btn4_Simulation_2 db "Do humans age as we do?$"
	 TEXT_btn4_Simulation_3 db "Of course, they do. Have you seen a big and small human next to each other.$"
	 TEXT_btn4_Simulation_4 db "Tha... Thanks for the answer.$"
	 TEXT_Wow db "wow$"
	 TEXT_btn4_Simulation_6 db "What?$"
	 TEXT_btn4_Simulation_7 db "Well, usually when you talk with someone it com with an insult.$"
	 TEXT_btn4_Simulation_8 db "Well, it's not my fault she doesn't know how aging works.$"
	 TEXT_btn4_Simulation_9 db "The only aging she knows is pokemon evolution I can imagine her Brother is a yellow Charmeleon and her father is a yellow Charizard.$" 
	 TEXT_btn4_Simulation_10 db "Ha, why I'm not surprised?$"
	 TEXT_Simulation_GetTogether_1 db "OK kids, let's start.$"
	 TEXT_Math_1 db "Ok, let's start with math. Do one of you know what is it?$"
	 TEXT_Math_2 db "No, but Sans is trying to sell us that this all week.$"
	 TEXT_Math_3 db "No, not that kind of math, but nice try. Sans come to see me after the lesson.$"
	 TEXT_Math_4 db "I promise it is not like it looks.$"
	 TEXT_Math_5 db "Mathematics includes such topics as numbers, formulas and related structures, shapes and the spaces in which they are contained, and quantities and their changes.$"
	 TEXT_Math_6 db "Ho ok ok yeah cool cool cool ya I totally understand.$"
	 TEXT_Math_8 db "I was just joking with you. Math is just a game with numbers and shapes.$"
	 TEXT_Math_9 db "A game?$"
	 TEXT_Math_10 db "I love games.$"
	 Text_MeToo db "Me too.$"
	 TEXT_Math_11 db "My favorite thing to do is to play games.$"
	 TEXT_Math_12 db "Are you sure it is not to burn ants?$"
	 TEXT_Math_13 db "I'm happy to see you are already like it.$"
	 TEXT_Math_14 db "And if I'm not wrong I think Alphyse is good at this game.$"
	 TEXT_Math_15 db "Really Alphys? Realy?$"
	 TEXT_Math_16 db "well, I guess I am not bad but I wouldn't say I'm good.$"
	 TEXT_Math_17 db "Ok Ok here is one. What is one plus one.$"
	 TEXT_Math_18 db "Eleven?$"
	 TEXT_Math_19 db "Not quite but a good try.$"
	 TEXT_Math_20 db "Alphys do you know the answer?$"
	 TEXT_Math_21 db "Yes, it is two.$"
	 TEXT_Math_22 db "Toriel. Is that right?$"
	 TEXT_Math_23 db "Yes. Very good.$"
	 TEXT_Math_24 db "Can you please show us how to play this game?$"
	 TEXT_Math_26 db "Take one finger.$"
	 TEXT_Math_28 db "This is a one. Now add another finger.$"
	 TEXT_Math_30 db "And now count them.$"
	 TEXT_Math_31 db "OMG you are right.$"
	 TEXT_Math_32 db "no way! That's so cool!$"
	 TEXT_Math_33 db "Want to try it for yourself?$"
	 TEXT_Math_34 db "Yes yes, please!!!!$"
	 TEXT_Math_35 db "Ok, Undyne what is two plus three?$"
	 TEXT_Math_36 db "hm.... hm five?$"
	 TEXT_Math_37 db "very good.$"
	 TEXT_Math_38 db "OMG I am so good at this game. worship me, peasants.$"
	 TEXT_Math_39 db "ha ha ha don't go too far.$"
	 TEXT_Math_40 db "WDGaster What is three plus one?$"
	 TEXT_Math_41 db "oh, that's easy. It is two.$"
	 TEXT_Math_43 db "Not fair I don't have fingers or hands.$"
	 TEXT_Math_44 db "Little one it's your turn. What is a five plus three?$"
	 
	 TEXT_btn1_Math_1 db "Yes, you are correct.$"
	 TEXT_btn1_Math_TorielLike db "You are very good maybe as good as Alphys.$"
	 TEXT_btn1_Math_TorielDontLike db "I believe that if you would train more you will be as good as Alphys.$"
	 TEXT_btn1_Math_UndyneLike db "Human look at you good at math. If you will practice I'm sure you will one day be as good as me.$"
	 TEXT_btn1_Math_UndyneDontlike db "Ya, that was an easy one. I still think I'm the best at it.$"
	 TEXT_btn1_Math_SansLike db "Kiddo you are not bad at it. I'm surprised.$"
	 TEXT_btn1_Math_SansDontLike db "Ya, it was an easy question but not too bad.$"
	 TEXT_btn1_Math_WDLike db "OMG human can you lend me your hands. You are so good at this game.$"
	 TEXT_btn1_Math_WDDontLike db "I bet I could do it If I had hands.$"
	 TEXT_btn1_Math_AlphysLike db "Human you... you are pretty good at it would you like to do math with me after the class.$"
	 TEXT_btn1_Math_AlphysDontLike db "Math is easy. Everyone here can do this. Don't give up.$"
	 
	 TEXT_btn2_Math_TorielLike db "Ho, I'm sorry little one but this is not correct. If you want I can teach it later again.$"
	 TEXT_btn2_Math_TorielDontLike db "That is incorrect.$"
	 TEXT_btn2_Math_UndyneLike db "Nice try, human. Don't expect to be as good as me. I'm a pro in everything.$"
	 TEXT_btn2_Math_UndyneDontLike_1 db "I knew you couldn't do it only I can.$"
	 TEXT_btn2_Math_UndyneDontLike_2 db "Alphys Toriel me $"
	 TEXT_btn2_Math_UndyneDontLike_3 db "Ya ok but I'm the best$"
	 ;Text_SansThisAgreeWitheUndyne db "No you'r not.$"
	 ;Text_ShutUp db "Shut up$"
	 TEXT_btn2_Math_UndyneDontLike_6 db "You two keep it down. You are disrespectful to the others.$"
	 TEXT_btn2_Math_WDDontLike db "You have fingers and you couldn't do this.$"
	 TEXT_btn2_Math_SansLike db "Don't be upset kiddo. I believe in you.$"
	 TEXT_btn2_Math_SansDontLike db "Ya kiddo, I didn't expect you to succeed.$"
	 TEXT_btn2_Math_PapayrosLike db "Good try. You were AWESOME.$"
	 TEXT_btn2_Math_PapayrosDontLike db "This fail was AWESOME.$"
	 TEXT_btn2_Math_AlphysLike db "Don't worry human. Math can be hard at the start but I can help you if you want.$"
	 TEXT_btn2_Math_AlphysDontLike db "Math is hard, I didn't expect you to do it first try but nice try.$"
	 
	 TEXT_btn3_Math_AlphysLike db "Of Course! I would love to.$"
	 TEXT_btn3_Math_AlphysDontLike db "I ... I think you should try for yourself to get better.$"
	 TEXT_btn3_Math_Undynelike db "Don't worry human. You should not expect to do it on the first try.$"
	 TEXT_btn3_Math_UndyneDontLike db "Of course, you have to rely on Alphys. You are not as good as me.$"
	 TEXT_btn3_Math_SansLike db "It is very impressive you ask for help, it is very hard to do so.$"
	 TEXT_btn3_Math_SansDontLike db "I didn't expect too much, kiddo.$"
	 TEXT_btn3_Math_WDLike db "I bet counting is hard, don't be upset. I would have helped you but, you know, no hands.$"
	 TEXT_btn3_Math_WDDontLike db "Really? you need help to count your fingers. what a waste.$"
	 
	 TEXT_btn4_Math_1 db "Look at you getting cocky. Ha ha ha.$"
	 TEXT_btn4_Math_UndyneLike db "What? Are you don't believe in the human?$"
	 TEXT_btn4_Math_UndyneLike_SansLike db "Of course, I am I'm just surprised by her bravery that's it.$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_1 db "As a matter a fact not really.$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_2 db "well, I believe in you human. Show them who is the second-best!$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_3 db "Me?$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_4 db "No, I am the best and the human is second.$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_5 db "Alphys is the best. I'm second, you are maybe third, so she is at best fourth.$"
	 TEXT_btn4_Math_UndyneLike_SansDontLike_6 db "Ya, then just watch.$"

	 TEXT_btn4_Math_UndyneDontLike db "Ya don't get so brave. You know you can't be as good as me.$"
	 TEXT_btn4_Math_UndyneDontLike_SansLike_1 db "Hay I was just kidding. I believe she can do it. And just because you were right at one question doesn't mean you are the best.$"
	 TEXT_btn4_Math_UndyneDontLike_SansLike_2 db "Well, first she wouldn't be as good as me no matter what. and seconds it is mean I am the best.$"
	 TEXT_btn4_Math_UndyneDontLike_SansLike_3 db "Just wait and see Ok$"
	 TEXT_btn4_Math_AlphysLike db "It is indeed an easy question. I believe in you.$"
	 TEXT_btn4_Math_AlphysDontLike db "I fink you should start with the easier questions.$"
	 TEXT_btn4_Math_Wd db "I can't believe you can do something harder than this. Fingers are really a bless.$"
	 ;TEXT_Lough db "Ha ha ha$"
	 TEXT_btn4_Math_TorielLike_1 db "well Ok how about hmm... ok I got one three times six$"
	 TEXT_btn4_Math_TorielLike_2 db "Eighteen$"
	 TEXT_btn4_Math_TorielLike_3 db "Wow that is very impressive$"
	 TEXT_btn4_Math_TorielLike_4 db "I don't even know what Toriel said. this game sound hard$"
	 TEXT_btn4_Math_TorielLike_5 db "Don't worry, I'm sure you can do just as well.$"
	 TEXT_btn4_Math_TorielLike_UndyneLike db "I Knew it!!!$"
	 TEXT_btn4_Math_TorielLike_UndyneDontLike_SansLike db "Told you. Good job kiddo.$"
	 TEXT_btn4_Math_TorielDontLike_1 db "Ok, try this. This is very hard so if you don't succeed it will be OK.$"
	 TEXT_btn4_Math_TorielDontLike_2 db "Is that Chinese?$"
	 TEXT_btn4_Math_TorielDontLike_3 db "No, this is advanced math this is for people that love the game.$"
	 TEXT_btn4_Math_TorielDontLike_4 db "I am going to be the best at this game.$"
	 TEXT_btn4_Math_TorielDontLike_5 db "After me, remember.$"
	 TEXT_btn4_Math_TorielDontLike_6 db "Little one do you have the answer.$"
	 TEXT_btn4_Math_TorielDontLike_7 db "Yes, of course, the answer is two divided by three.$"
	 TEXT_btn4_Math_TorielDontLike_8 db "What?! how?$"
	 TEXT_btn4_Math_TorielDontLike_9 db "Well, it's easy here I'll show you$"
	 TEXT_btn4_Math_TorielDontLike_10 db "You see, it is a piece of cake.$"
	 TEXT_btn4_Math_TorielDontLike_11 db "Yeah ok, second place is good too. And now I no longer love cakes.$"
	 ;TEXT_Lough db "ha ha ha$"
	 
	 
	 TEXT_Math_GetTogether_1 db "Kids, please don't hold a grudge against each other if you answered the question incorrectly.$"
	 TEXT_Math_GetTogether_2 db "Ok, let's keep it up and move to the next subject.$"
	 TEXT_Math_GetTogether_3 db "Kids this is the last day of the kindergarten.$"
	 TEXT_Math_GetTogether_4 db "I have been told that you can choose up to three kids that you want to be in your class.Chose carefully.$"

	 
	 
	 Text_Classrom_1 db "I can't believe summer break is over.$"
	 Text_Classrom_2 db "By the way where is the teacher?$"
	 Text_Classrom_3 db "Ho, I can hear him. Here he comes.$"
	 
	 
	 Text_Classrom_Teach1_1 db "Shadow clone jutsu.$" 
	 Text_Classrom_Teach1_2 db "Ahh, you scared me.$"
	 Text_Classrom_Teach1_3 db "Ho, I'm sorry, but if you want to be a proper ninja, you have to know to be prepared at all times.$"
	 Text_Classrom_Teach1_4 db "I wanna be a  Power Rangers, not a ninja.$"
	 Text_Classrom_Teach1_5 db "Too bad, you can't.$"
	 Text_Classrom_Teach1_6 db "What! why?$"
	 Text_Classrom_Teach1_7 db "All the colors are occupied.$"
	 Text_Classrom_Teach1_8 db "Ho ok. Make sense.$"
	 Text_Classrom_Teach1_9 db "Mr why are you a rat?$"
	 Text_Classrom_Teach1_10 db "Why are you not?$"
	 ;Text_Classrom_Teach1_1 db "WOW"
	 Text_Classrom_Teach1_12 db "Yes, sensei. sorry, sensei. please teach me the way of the ninja.$"
	 Text_Classrom_Teach1_13 db "As you wish my dear student.$"
	 Text_Classrom_Teach1_14 db "I am a turtle, not a deer.$"
	 Text_Classrom_Teach1_15 db "Yes, I know and it is perfect. ha ha ha!$"

	 
	 Text_Classrom_Teach2_0 db "Hello!!!! Students!!!!.$"
	 Text_Classrom_Teach2_1 db "Mr are you a human.$"
	 Text_Classrom_Teach2_2 db "No, I am beautiful.$"
	 Text_Classrom_Teach2_3 db "Ya, I am not so sure I like him.$"
	 Text_Classrom_Teach2_4 db "Let me introduce myself I am the beautiful face of KFC.$"
	 Text_Classrom_Teach2_5 db "Do you mean The chicken wing thingy?$"
	 Text_Classrom_Teach2_6 db "Precisely, The chicken wing thingy, I can see that you heard of me.$"
	 Text_Classrom_Teach2_7 db "I heard they plan to close you because of the amount of oil you have in the wings.$"
	 Text_Classrom_Teach2_8 db "You heard it correctly. Our wings are the ugliest oiliest in this all world.$"
	 Text_Classrom_Teach2_9 db "Now kids I would love to sing a song with you.$"
	 Text_Classrom_Teach2_10 db "A song?$"
	 Text_Classrom_Teach2_11 db "Yes, my favorite song for a matter of fact.$"
	 ;Text_Classrom_Teach2_2 db ok
	 Text_Classrom_Teach2_13 db "Try to sing the song with the Under The Sea melody.$"
	 Text_Classrom_Teach2_14 db "Ha, ok I guess.$"
	 Text_Classrom_Teach2_15 db "Let's start. Maestro.$"
	 Text_Classrom_Teach2_16 db "Under the sea whith Kentucky!$"
	 Text_Classrom_Teach2_17 db "Down where it's wetter I'ma come get her she's so crunchy!$"
	 Text_Classrom_Teach2_18 db "You'll never get here out you head!$"
	 Text_Classrom_Teach2_19 db "Flavor so strong will make you dead!$"
	 Text_Classrom_Teach2_20 db "I'll pluck her feathers there's no one better my Kentucky!$"
	 Text_Classrom_Teach2_21 db "Is he really our teacher?$"
	 Text_Classrom_Teach2_22 db "Indeed my student.$"
	 Text_Classrom_Teach2_23 db "Ok, so what is your name.$"
	 Text_Classrom_Teach2_24 db "My name is Kentucky of course.$"
	 Text_Classrom_Teach2_25 db "Ho jes.$"
	 
	 Text_Classrom_Teach3_1 db "Hello students, I will be your teacher this year.$"
	 Text_Classrom_Teach3_2 db "Thank you?$"
	 Text_Classrom_Teach3_3 db "What are you thanking me for?$"
	 Text_Classrom_Teach3_4 db "Nothing you are just so handsome.$"
	 Text_Classrom_Teach3_5 db "Ho, thank you.$"
	 Text_Classrom_Teach3_6 db "Handso... hm I meant teacher, what are you doing here?$"
	 Text_Classrom_Teach3_7 db "Well, I am supposed to teach you but actually, I am here just to make the programmer sister happy.$"
	 Text_Classrom_Teach3_8 db "Wow, you are so brave and handsome.$"
	 Text_Classrom_Teach3_9 db "Ho and the programmer wanted to break the fourth wall in this all game.$"
	 Text_Classrom_Teach3_10 db "I don't know what are you talking about but I agree with every sentence that comes out of your mouth.$"
	 Text_Classrom_Teach3_11 db "So, would you like me to introduce myself?$"
	 Text_Classrom_Teach3_12 db "No need, we will just call you Mr.Handsome.$"
	 Text_Classrom_Teach3_13 db "Yes agreed!$"
	 Text_Classrom_Teach3_14 db "Ha, ok.$"

	 
	 
	 
	 
	 
	 Button1_Text dw ?
	 Button2_Text dw ?
	 Button3_Text dw ?
	 Button4_Text dw ?
					 
	 X_Start dw ?
	 X_Right dw ?
	 Y_Right dw ?
	 GoDownAt dw ?
	 
	 textForText dw ?
	 
	 TheLetter db ?
	 
	 backGround dw ?
	 
	 character dw ?
	 
	 SpeakerName dw ?
	 ;Papyrus, Sans, Undyne and Alphys
	 Name_Toriel db "Toriel$"
	 Name_Papyrus db "Papyrus$"
	 Name_Sans db "Sans$"
	 Name_Undyne db "Undyne$"
	 Name_Alphys db "Alphys$"
	 Name_WDGaster db "WDGaster$"
	 Name_Everyone db "Everyone$"
	 Name_Player db "Player$"
	 Name_Kid db "Kid$"
	 Name_Teacher db "Teacher$"
	 
	 character_Width dw ?
	 character_Height dw ?
	 
	 btn1_Food db "My favorite food is cake.$"
	 btn2_Food db "My favorite food is baked salmon.$"
	 btn3_Food db "My favorite food is pasta.$"
	 btn4_Food db "I don't have a favorite food.$"
	 
	 btn1_Eat db "We eat the same food you eat.$"
	 btn2_Eat db "We are all the same$"
	 btn3_Eat db "We eat monsters like you.$"
	 btn4_Eat db "Don't answer.$"

	 btn1_Play db "Don't say a thing.$"
	 btn2_Play db "There's someone behind you.$"
	 btn3_Play db "Say hello to the thing.$"
	 btn4_Play db "Whisper to sans.$"
	 
	 btn1_Simulation db "Yes, I'm very excited to go to school.$"
	 btn2_Simulation db "Not really, It sounds boring.$"
	 btn3_Simulation db "I will go Everywhere but here.$"
	 btn4_Simulation db "It is so fun here. I don't want to leave.$"
	 
	 btn1_Math db "Eight$"
	 btn2_Math db "Ten?$"
	 btn3_Math db "I don't know. Alphys can you help me.$"
	 btn4_Math db "This is easy, can you give me a harder one.$"
	 
	 btn1_text db "It is very cold here!"
	 btn2_text db "I played here once with a friend!"
	 btn3_text db "Nice to walk here just the two of us!"
	 btn4_text db "It's scary here let's go home!"
	              
	 Whaite db 0
	 
	 FriendsCnt db 0
	 
CODESEG
start: 
	
	 mov ax, @data
	 mov ds,ax
	
	 call goToGrafic
	 
	 
	 
	SHOW_M
	;call setAsyncMouse
	mov [backGround], offset PicStarteOfTheGame
	call SceneFullScreen
	
	
	;intredaction

	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielMeetsFrisk
	mov [backGround], offset PicTheKindergarten
	mov [character], offset PicTorielMeetsFrisk
	mov [character_Width], 30
	mov [character_Height],73
	call SceneText
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielIntroduceTheKids
	mov [backGround], offset PicTheKindergarten
	mov [character], offset PicAllTheKids
	mov [character_Width], 100
	mov [character_Height],50
	call SceneText
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielTellTheKidToSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_PapyrusSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_SansSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_UndyneSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_SansThisAgreeWitheUndyne
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_ShutUp
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_SansTellAlphyseToSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset Text_AlphysSayHello
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielInviteTheKidToEat
	mov [backGround], offset PicTheKindergarten
	mov [character], offset PicTorielPie
	mov [character_Width], 60
	mov [character_Height],85
	call SceneText
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_FoodTime
	call SceneTextNoChange

	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_PapyroseMadePasta
	mov [backGround], offset PicEvryoneEatsPastan
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielAskWhatIsAvryoneFaivoritFood
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_TorielFaivoritFood
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_PapyrosFaivoritFood
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_UndyneFaivoritFood
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset Text_AlphysFaivoritFood
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_SansFaivoritFood
	call SceneTextNoChange
	
	mov [TorielLikabilityAddButon1],4
	mov [UndyneLikabilityAddButon2], -3
	mov [PapyrusLikabilityAddButon3],10
	mov [SansLikabilityAddButon3],5	
	mov [SansLikabilityAddButon4],-2
	mov [Button1_Text], offset btn1_Food
	mov [Button2_Text], offset btn2_Food
	mov [Button3_Text], offset btn3_Food
	mov [Button4_Text], offset btn4_Food
	call SceneQuestion
	
	cmp [IsOnUR],1
	je btn1_FoodIsGood
	jmp check_btn2_Food
btn1_FoodIsGood:
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_btn1_food_torial&FriskFavorit
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_btn1_food_UndyneIsSoprise
	mov [backGround], offset PicUndyneInAFightingPose
	call SceneTextNoCharecters
	
	mov dx, offset PicSansLookTotheSide
	mov [BmpLeft], 20
	mov [BmpTop], 98
	mov [BmpWidth], 60
	mov [BmpHeight] ,49
	call OpenShowBmp
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_btn1_food_SanstolkBack
	call SceneTextNoChange
	
	
	mov dx, offset PicUndyneIsAngry
	mov [BmpLeft], 250
	mov [BmpTop], 88
	mov [BmpWidth], 60
	mov [BmpHeight] ,59
	call OpenShowBmp
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_btn1_food_UndynetolkBack
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_btn1_food_sanstolkBackagain
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_btn1_food_TorielInterapt
	mov [backGround], offset PicEvryoneEatsPastan
	call SceneTextNoCharecters
	
	jmp GetTogether_Food
	
check_btn2_Food:	
	
	cmp [IsOnUL],1
	je btn2_FoodIsGood
	jmp check_btn3_Food
btn2_FoodIsGood:
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_btn2_food_UndyneIsSad
	mov [backGround], offset PicUndyneAndHerFamaly
	mov [character], offset PicUndyneIsSad
	mov [character_Width], 50
	mov [character_Height],54
	call SceneText
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_btn2_food_UndyneFakeBakeStory
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_Sike
	mov [backGround], offset PicUndyneAndHerFamaly
	mov [character], offset PicUndyneIsHappy
	mov [character_Width], 70
	mov [character_Height],61
	call SceneText
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_Damn
	mov [backGround], offset PicEvryoneEatsPastan
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_btn2_food_Sanse
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_Lough
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset Text_btn2_food_Toriel
	call SceneTextNoChange
	
	jmp GetTogether_Food
check_btn3_Food:

cmp [IsOnDL],1
	je btn3_FoodIsGood
	jmp check_btn4_Food
btn3_FoodIsGood:
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset Text_btn3_food_PapyrosIsSopraised
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset  TEXT_btn3_food_PapyrosIsFantasizing
	mov [backGround], offset PicPastaEatingContest
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset Text_btn3_food_AlphysWantToJoin
	mov [character], offset PicAlphysIsEmbarase
	mov [character_Width], 64
	mov [character_Height],55
	mov [BmpLeft],250
	call AddCharacter
	
	mov dx, offset PicPapyrusIsEmbarase
	mov [BmpLeft], 20
	mov [BmpTop], 83
	mov [BmpWidth], 73
	mov [BmpHeight] ,60
	call OpenShowBmp
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn3_food_PapyrosIsAmberesed
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_HaOk
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_btn3_food_SansIsConfused
	mov [character], offset PicSansIsConfused
	mov [character_Width], 50
	mov [character_Height],45
	mov [BmpLeft],150
	call AddCharacter
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn3_food_AlphysDodgeTheQuastion
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_Jesus
	mov [backGround], offset PicEvryoneEatsPastan
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn3_food_Toriel
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Yes
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Ofcourse
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Yep
	call SceneTextNoChange
	
	jmp GetTogether_Food
	
check_btn4_Food:	

	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_food_SansIsBord
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_food_PapyrosIsQirias
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_food_UndyneIsGettingHangry
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_food_Toriel
	call SceneTextNoChange	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_food_Alphys
	call SceneTextNoChange

	mov [AlphysLikabilityAddButon1],4
	mov [UndyneLikabilityAddButon1],3
	mov [AlphysLikabilityAddButon2], 4
	mov [AlphysLikabilityAddButon4],-4
	mov [TorielLikabilityAddButon4],-3
	mov [UndyneLikabilityAddButon4],-3
	mov [SansLikabilityAddButon2],-1
	mov [UndyneLikabilityAddButon2],-1
	mov [PapyrusLikabilityAddButon2],2
	mov [PapyrusLikabilityAddButon1],2
	mov [Button1_Text], offset btn1_Eat
	mov [Button2_Text], offset btn2_Eat
	mov [Button3_Text], offset btn3_Eat
	mov [Button4_Text], offset btn4_Eat
	call SceneQuestion
		
	cmp [IsOnUR],1
	je btn1_EatIsGood
	jmp check_btn2_Eat
btn1_EatIsGood:
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Really
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_eat_Undyne
	call SceneTextNoChange

	jmp GetTogether_Eat


check_btn2_Eat:
	cmp [IsOnUL],1
	je btn2_EatIsGood
	jmp check_btn3_Eat
btn2_EatIsGood:
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn2_eat_HumansDiffrens
	mov [backGround], offset PicTheHumanTakeASpech
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn2_eat_HumansUndyne
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn2_eat_HumansSkeletons
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn2_eat_HumansAnimals
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn2_eat_Humans
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_ThatsRight
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_eat_Toriel
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_btn2_eat_Everyone
	call SceneTextNoChange
	
	call GetTogether_Eat
	
check_btn3_Eat:
	cmp [IsOnDL],1
	je btn3_EatIsGood
	jmp check_btn4_Eat
btn3_EatIsGood:
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn3_eat_Toriel
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn3_eat_Human
	call SceneTextNoChange
	
	mov [backGround], offset PicHumanKillAll
	call SceneFullScreen
	
	mov [backGround], offset PicHumanKillYou
	call SceneTheEnd
	jmp exit
	
	
check_btn4_Eat:
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_eat_Human
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_eat_Alphys
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_eat_Toriel
	call SceneTextNoChange
	
	
GetTogether_Eat:
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn_eat_Alphys
	mov [backGround], offset PicEvryoneEatsPastan
	call SceneTextNoCharecters
	
	
	
GetTogether_Food:
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_LetsStartEat
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_TorielGoToPlay
	mov [backGround], offset PicTheKindergarten
	mov [character], offset PicKids
	mov [character_Width], 143
	mov [character_Height],55
	call SceneText
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_PlayTime
	call SceneTextNoChange
	
	cmp [SansLikability],20
	ja DontLike_Play
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_like_1
	mov [backGround], offset PicWd0
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_like_2
	mov [backGround], offset PicWd1
	call SceneTextNoCharecters
	jmp q_play
DontLike_Play:	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_Dontlike_1
	mov [backGround], offset PicWd0
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_Dontlike_2
	mov [backGround], offset PicWd1
	call SceneTextNoCharecters
	
q_play:	
	mov [WDGasterLikabilityAddButon1],5
	mov [WDGasterLikabilityAddButon2],-5
	mov [SansLikabilityAddButon2],3
	mov [WDGasterLikabilityAddButon3],4
	mov [WDGasterLikabilityAddButon4],-2
	mov [Button1_Text], offset btn1_Play
	mov [Button2_Text], offset btn2_Play
	mov [Button3_Text], offset btn3_Play
	mov [Button4_Text], offset btn4_Play
	call SceneQuestion
	
	cmp [IsOnUR],1
	je btn1_PlayIsGood
	jmp check_btn2_Play
btn1_PlayIsGood:
DontSay:	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn1_Play_1
	mov [backGround], offset PicWd3
	call SceneTextNoCharecters
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Play_2
	mov [backGround], offset PicWd4
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Lough
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Play_3
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn1_Play_4
	call SceneTextNoChange
	cmp [IsOnDR],1
	je notDontlike_btn4_PlayRet
	jmp Dontlike_btn4_PlayRet
notDontlike_btn4_PlayRet:
	cmp [SansLikability],20
	ja Dontlike_btn1_Play
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Play_like_1
	call SceneTextNoChange
	
	sub [SansLikability], 4
	jmp GetTogether_Play
	
Dontlike_btn1_Play:	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Play_Dontlike_1
	call SceneTextNoChange
	
	sub [SansLikability], 4
	jmp GetTogether_Play


check_btn2_Play:
	cmp [IsOnUL],1
	je btn2_PlayIsGood
	jmp check_btn3_Play
btn2_PlayIsGood:
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Play_1
	mov [backGround], offset PicWd2
	call SceneTextNoCharecters
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Play_2
	mov [backGround], offset PicWd3
	call SceneTextNoCharecters
	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn2_Play_3
	mov [backGround], offset PicWd4
	call SceneTextNoCharecters
	
	
	
	
	;cmp [SansLikability],20
	;ja Dontlike_btn2_Play
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Play_like_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn2_Play_like_2
	call SceneTextNoChange
	
	
;Dontlike_btn2_Play:	
	
;	mov [SpeakerName], offset Name_Sans
;	mov [textForText], offset TEXT_btn1_Play_Dontlike_1
;	call SceneTextNoChange
	

	jmp GetTogether_Play
check_btn3_Play:
	cmp [IsOnDL],1
	je btn3_PlayIsGood
	jmp check_btn4_Play
btn3_PlayIsGood:
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn3_Play_1
	mov [backGround], offset PicWd2
	call SceneTextNoCharecters
	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Play_2
	mov [backGround], offset PicWd4
	call SceneTextNoCharecters
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn3_Play_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Play_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn3_Play_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Play_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Lough
	call SceneTextNoChange
	
	jmp GetTogether_Play
	
	
check_btn4_Play:	
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Play_1
	mov [backGround], offset PicWd2
	call SceneTextNoCharecters
	cmp [SansLikability],20
	jna Like_btn4_Play
	jmp Dontlike_btn4_Play
Like_btn4_Play:
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_1
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Play_like_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Play_like_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_5
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_7
	mov [backGround], offset PicWd3
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn4_Play_like_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_like_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn4_Play_like_10
	call SceneTextNoChange
	jmp GetTogether_Play
Dontlike_btn4_Play:
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Play_Dontlike_1
	call SceneTextNoChange
	jmp DontSay
Dontlike_btn4_PlayRet:	
	
GetTogether_Play:
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_9
	call SceneTextNoChange
	cmp [WDGasterLikability],20
	ja playDontLikeWd
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_Like_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_Like_2
	call SceneTextNoChange
	jmp PlayDontLikeSans
playDontLikeWd:
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_PlayTime_GetTogether_DontLike
	call SceneTextNoChange
	cmp [SansLikability],20
	ja PlayDontLikeSans
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_PlayTime_GetTogether_DontLikeLike
	call SceneTextNoChange
PlayDontLikeSans:
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_PlayTime_GetTogether_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Simulation_1
	mov [backGround], offset PicClass
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Simulation_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Simulation_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_Simulation_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Simulation_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Simulation_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Simulation_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Simulation_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Simulation_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Simulation_11
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Simulation_12
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Lough
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Simulation_14
	call SceneTextNoChange
	
	mov [AlphysLikabilityAddButon1],3
	mov [WDGasterLikabilityAddButon1],3
	mov [TorielLikabilityAddButon1],1
	mov [UndyneLikabilityAddButon2],3
	mov [PapyrusLikabilityAddButon2],3
	
	mov [AlphysLikabilityAddButon3],-3
	mov [WDGasterLikabilityAddButon3],-3
	mov [TorielLikabilityAddButon3],-3
	mov [UndyneLikabilityAddButon3],-3
	mov [PapyrusLikabilityAddButon3],-3
	mov [SansLikabilityAddButon3],-3
	
	mov [AlphysLikabilityAddButon4],2
	mov [WDGasterLikabilityAddButon4],2
	mov [TorielLikabilityAddButon4],2
	mov [UndyneLikabilityAddButon4],2
	mov [PapyrusLikabilityAddButon4],2
	mov [SansLikabilityAddButon4],2
	mov [Button1_Text], offset btn1_Simulation
	mov [Button2_Text], offset btn2_Simulation
	mov [Button3_Text], offset btn3_Simulation
	mov [Button4_Text], offset btn4_Simulation
	call SceneQuestion
	cmp [IsOnUR],1
	je btn1_SimulationIsGood
	jmp check_btn2_Simulation
btn1_SimulationIsGood:
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn1_Simulation_1
	call SceneTextNoChange
	cmp [TorielLikability],20
	ja btn1TorielDontlike
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn1_Simulation_TorielLike
	call SceneTextNoChange
btn1TorielDontlike:	
	
	cmp [AlphysLikability],20
	ja btn1AlphysDontlikeSimulation
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn1_Simulation_AlphysLike
	call SceneTextNoChange
btn1AlphysDontlikeSimulation:	
	
	
	
	
	jmp GetTogether_Simulation
check_btn2_Simulation:
	cmp [IsOnUL],1
	je btn2_SimulationIsGood
	jmp check_btn3_Simulation
btn2_SimulationIsGood:
		
	cmp [UndyneLikability],20
	ja btn2AUndyneDontlikeSimulation
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn2_Simulation_UndyneLike
	call SceneTextNoChange
btn2AUndyneDontlikeSimulation:		
		
		
	cmp [TorielLikability],20
	ja btn2TorielDontlikeSimulation
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_Simulation_TorielLike
	call SceneTextNoChange
btn2TorielDontlikeSimulation:
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Simulation_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn2_Simulation_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_Simulation_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn2_Simulation_4
	call SceneTextNoChange
	
	jmp GetTogether_Simulation
check_btn3_Simulation:
	cmp [IsOnDL],1
	je btn3_SimulationIsGood
	jmp check_btn4_Simulation
btn3_SimulationIsGood:
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn3_Simulation_1
	call SceneTextNoChange

	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn3_Simulation_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn3_Simulation_3
	call SceneTextNoChange
	
	cmp [AlphysLikability],20
	ja btn3AlphysDontlikeSimulation
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn3_Simulation_AlphysLike
	call SceneTextNoChange
btn3AlphysDontlikeSimulation:	
	
	cmp [WDGasterLikability],20
	ja btn3WDDontlikeSimulation
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Simulation_WDLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn3_Simulation_WDLike_2
	call SceneTextNoChange
btn3WDDontlikeSimulation:	
	
	jmp GetTogether_Simulation
check_btn4_Simulation:
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Simulation_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_Simulation_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Simulation_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_Simulation_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_Wow
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Simulation_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_Simulation_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Simulation_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Simulation_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Simulation_10
	call SceneTextNoChange
	
GetTogether_Simulation:	
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Simulation_GetTogether_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Math_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Math_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_Lough
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Math_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_MeToo
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Math_11
	call SceneTextNoChange
	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_Math_12
	call SceneTextNoChange
		
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_13
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_14
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Math_15
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_Math_16
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_17
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Math_18
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_19
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Math_20
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_Math_21
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_22
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_23
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Math_24
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_26
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_28
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_30
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_Math_31
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_32
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_33
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_Math_34
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_35
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_36
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_37
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_Math_38
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_39
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_40
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Math_41
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_19
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_Math_43
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_44
	call SceneTextNoChange
	
	
	mov [AlphysLikabilityAddButon1],2
	mov [SansLikabilityAddButon1],1
	mov [TorielLikabilityAddButon1],1
	mov [AlphysLikabilityAddButon2],-2
	mov [AlphysLikabilityAddButon3],5
	mov [SansLikabilityAddButon3],3
	mov [UndyneLikabilityAddButon3],-2
	mov [AlphysLikabilityAddButon4],1
	mov [SansLikabilityAddButon4],-1
	mov [UndyneLikabilityAddButon4],-2
	mov [TorielLikabilityAddButon4],-1
	mov [Button1_Text], offset btn1_Math
	mov [Button2_Text], offset btn2_Math
	mov [Button3_Text], offset btn3_Math
	mov [Button4_Text], offset btn4_Math
	call SceneQuestion
	
	cmp [IsOnUR],1
	je btn1_MathIsGood
	jmp check_btn2_Math
btn1_MathIsGood:
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn1_Math_1
	call SceneTextNoChange
	cmp [TorielLikability],20
	ja btn1TorielDontlikeMath
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn1_Math_TorielLike
	call SceneTextNoChange

	jmp btn1TorielLikeMath
btn1TorielDontlikeMath:	
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn1_Math_TorielDontLike
	call SceneTextNoChange
	
btn1TorielLikeMath:
	
	cmp [UndyneLikability],20
	ja btn1UndyneDontlikeMath
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn1_Math_UndyneLike
	call SceneTextNoChange

	jmp btn1UndyneLikeMath
btn1UndyneDontlikeMath:	
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn1_Math_UndyneDontlike
	call SceneTextNoChange
	
btn1UndyneLikeMath:
	
	cmp [SansLikability],20
	ja btn1SansDontlikeMath
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Math_SansLike
	call SceneTextNoChange

	jmp btn1SansLikeMath
btn1SansDontlikeMath:	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn1_Math_SansDontLike
	call SceneTextNoChange
	
btn1SansLikeMath:
	
	cmp [WDGasterLikability],20
	ja btn1WDDontlikeMath
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn1_Math_WDLike
	call SceneTextNoChange

	jmp btn1WDLikeMath
btn1WDDontlikeMath:	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn1_Math_WDDontLike
	call SceneTextNoChange
	
btn1WDLikeMath:
	
	
	cmp [AlphysLikability],20
	ja btn1AlphysDontlikeMath
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn1_Math_AlphysLike
	call SceneTextNoChange

	jmp btn1AlphysLikeMath
btn1AlphysDontlikeMath:	
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn1_Math_AlphysDontLike
	call SceneTextNoChange
	
btn1AlphysLikeMath:
	
	jmp GetTogether_Math
check_btn2_Math:
	cmp [IsOnUL],1
	je btn2_MathIsGood
	jmp check_btn3_Math
btn2_MathIsGood:
	
	cmp [TorielLikability],20
	ja btn2TorielDontlikeMath
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_Math_TorielLike
	call SceneTextNoChange

	jmp btn2TorielLikeMath
btn2TorielDontlikeMath:	
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_Math_TorielDontLike
	call SceneTextNoChange
	
btn2TorielLikeMath:
	
	cmp [UndyneLikability],20
	ja btn2UndyneDontlikeMath
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn2_Math_UndyneLike
	call SceneTextNoChange

	jmp btn2UndyneLikeMath
btn2UndyneDontlikeMath:	
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn2_Math_UndyneDontLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Math_UndyneDontLike_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn2_Math_UndyneDontLike_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset Text_SansThisAgreeWitheUndyne
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset Text_ShutUp
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn2_Math_UndyneDontLike_6
	call SceneTextNoChange
	
btn2UndyneLikeMath:

	cmp [WDGasterLikability],0
	ja btn2WDLikeMath
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn2_Math_WDDontLike
	call SceneTextNoChange
	
btn2WDLikeMath:

	cmp [SansLikability],20
	ja btn2SansDontlikeMath
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Math_SansLike
	call SceneTextNoChange

	jmp btn2SansLikeMath
btn2SansDontlikeMath:	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn2_Math_SansDontLike
	call SceneTextNoChange
	
btn2SansLikeMath:
	
	cmp [PapyrusLikability],20
	ja btn2PapyrusDontlikeMath
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn2_Math_PapayrosLike
	call SceneTextNoChange

	jmp btn2PapyrusLikeMath
btn2PapyrusDontlikeMath:	
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn2_Math_PapayrosDontLike
	call SceneTextNoChange
	
btn2PapyrusLikeMath:
	
	
	cmp [AlphysLikability],20
	ja btn2AlphysDontlikeMath
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn2_Math_AlphysLike
	call SceneTextNoChange

	jmp btn2AlphysLikeMath
btn2AlphysDontlikeMath:	
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn2_Math_AlphysDontLike
	call SceneTextNoChange
	
btn2AlphysLikeMath:
	
	
	
	
	jmp GetTogether_Math
check_btn3_Math:
	cmp [IsOnDL],1
	je btn3_MathIsGood
	jmp check_btn4_Math
btn3_MathIsGood:

	cmp [AlphysLikability],20
	ja btn3AlphysDontlikeMath
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn3_Math_AlphysLike
	call SceneTextNoChange

	jmp btn3AlphysLikeMath
btn3AlphysDontlikeMath:	
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn3_Math_AlphysDontLike
	call SceneTextNoChange
	
btn3AlphysLikeMath:
	
	cmp [UndyneLikability],20
	ja btn3UndyneDontlikeMath
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn3_Math_UndyneLike
	call SceneTextNoChange

	jmp btn3UndyneLikeMath
btn3UndyneDontlikeMath:	
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn3_Math_UndyneDontlike
	call SceneTextNoChange
	
btn3UndyneLikeMath:
	
	cmp [SansLikability],20
	ja btn3SansDontlikeMath
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn3_Math_SansLike
	call SceneTextNoChange

	jmp btn3SansLikeMath
btn3SansDontlikeMath:	
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn3_Math_SansDontLike
	call SceneTextNoChange
	
btn3SansLikeMath:

	cmp [WDGasterLikability],20
	ja btn3WDDontlikeMath
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Math_WDLike
	call SceneTextNoChange

	jmp btn3WDLikeMath
btn3WDDontlikeMath:	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn3_Math_WDDontLike
	call SceneTextNoChange
	
btn3WDLikeMath:
	
	
	jmp GetTogether_Math
check_btn4_Math:
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_1
	call SceneTextNoChange
	
	cmp [UndyneLikability],0
	ja btn4UndyneDontlikeMathHelp
	jmp btn4UndyneDontlikeMath
btn4UndyneDontlikeMathHelp:
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneLike
	call SceneTextNoChange
	
	cmp [SansLikability],20
	ja UndyneLIkeSansNotMath
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansLike
	call SceneTextNoChange
	jmp btn4UndyneLikeMath
UndyneLIkeSansNotMath:	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneLike_SansDontLike_6
	call SceneTextNoChange
	
	jmp btn4UndyneLikeMath
btn4UndyneDontlikeMath:	
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneDontLike
	call SceneTextNoChange
	
	cmp [SansLikability],20
	ja btn4UndyneLikeMath
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneDontLike_SansLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_UndyneDontLike_SansLike_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_UndyneDontLike_SansLike_3
	call SceneTextNoChange
	
btn4UndyneLikeMath:
	
	cmp [AlphysLikability],20
	ja btn4AlphyDontLikeMath
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_Math_AlphysLike
	call SceneTextNoChange
	
	jmp btn4AlphyLikeMath
btn4AlphyDontLikeMath:	
	
	mov [SpeakerName], offset Name_Alphys
	mov [textForText], offset TEXT_btn4_Math_AlphysDontLike
	call SceneTextNoChange
	
btn4AlphyLikeMath:	
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn4_Math_Wd
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_Lough
	call SceneTextNoChange
	
	cmp [TorielLikability],20
	jna btn4TorielDontLikeMathHelp
	jmp btn4TorielDontLikeMath
btn4TorielDontLikeMathHelp:
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Math_TorielLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Math_TorielLike_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Math_TorielLike_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_WDGaster
	mov [textForText], offset TEXT_btn4_Math_TorielLike_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Math_TorielLike_5
	call SceneTextNoChange
	cmp [UndyneLikability],20
	ja btn4TorielLikeUndyneDontMath
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_TorielLike_UndyneLike
	call SceneTextNoChange
	
	jmp btn4TorielLikeMath
btn4TorielLikeUndyneDontMath:
	cmp [SansLikability],20
	jna btn4TorielLikeMathHelp
	jmp btn4TorielLikeMath
btn4TorielLikeMathHelp:
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_TorielLike_UndyneDontLike_SansLike
	call SceneTextNoChange
	
	jmp btn4TorielLikeMath
btn4TorielDontLikeMath:
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_2
	mov [character], offset PicEquation
	mov [character_Width], 150
	mov [character_Height],43
	mov [BmpLeft],50
	call AddCharacter
	
	mov [SpeakerName], offset Name_Sans
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Undyne
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_10
	mov [character], offset PicAnswer
	mov [character_Width], 150
	mov [character_Height],164
	mov [BmpLeft],50
	call AddCharacter
	
	mov [SpeakerName], offset Name_Player
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Papyrus
	mov [textForText], offset TEXT_btn4_Math_TorielDontLike_11
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_Lough
	mov [backGround], offset PicClass
	call SceneTextNoCharecters
	
btn4TorielLikeMath:
	
GetTogether_Math:
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_GetTogether_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_GetTogether_2
	call SceneTextNoChange
	
	mov [backGround], offset PicTimeSkip
	call SceneFullScreen
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_GetTogether_3
	mov [backGround], offset PicTheKindergarten
	mov [character], offset PicKids
	mov [character_Width], 143
	mov [character_Height],55
	call SceneText
	
	mov [SpeakerName], offset Name_Toriel
	mov [textForText], offset TEXT_Math_GetTogether_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset TEXT_OK
	call SceneTextNoChange
	
	mov [backGround], offset PicSummerBreak
	call SceneFullScreen
	
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_1
	mov [backGround], offset PicSchool
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_3
	call SceneTextNoChange
	
	cmp [PapyrusLikability],20
	ja CheckUndyne
	inc [FriendsCnt]
CheckUndyne:
	cmp [UndyneLikability],20
	ja CheckAlphys
	inc [FriendsCnt]
CheckAlphys:
	cmp [AlphysLikability],20
	ja CheckWD
	inc [FriendsCnt]
CheckWD:
	cmp [WDGasterLikability],20
	ja CheckSans
	inc [FriendsCnt]
CheckSans:
	cmp [SansLikability],20
	ja thatsIt
	inc [FriendsCnt]
thatsIt:
	cmp [FriendsCnt],5
	jne NotTecher3
	jmp Techer3
NotTecher3:
	cmp [FriendsCnt],0
	jne NotTecher2
	jmp Techer2
NotTecher2:
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_1
	mov [character], offset PicTech1Shadow
	mov [character_Width], 75
	mov [character_Height],100
	mov [BmpLeft],200
	call AddCharacter
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_3
	mov [backGround], offset PicSchool
	mov [character], offset PicTech1Normal
	mov [character_Width], 73
	mov [character_Height],100
	call SceneText
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_Wow
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_12
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_13
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach1_14
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach1_15
	call SceneTextNoChange
	
	mov [backGround], offset PicTech1End
	call SceneTheEnd
	jmp exit
	
Techer2:

	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_0
	mov [character], offset PicTech2
	mov [character_Width], 85
	mov [character_Height],100
	mov [BmpLeft],200
	call AddCharacter

	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_1
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_2
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_4
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_6
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_Classrom_Teach2_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_11
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Everyone
	mov [textForText], offset Text_OK
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_13
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_14
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_15
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_16
	mov [backGround], offset PicTech2Song
	call SceneTextNoCharecters
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_17
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_18
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_19
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_20
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_21
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_22
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_23
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach2_24
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach2_25
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Lough
	call SceneTextNoChange
	
	
	
	mov [backGround], offset PicTech2End
	call SceneTheEnd
	jmp exit
Techer3:
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_1
	mov [character], offset PicTech3Happy
	mov [character_Width], 81
	mov [character_Height],120
	mov [BmpLeft],200
	call AddCharacter
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_2
	call SceneTextNoChange
		
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_3
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_4
	mov [backGround], offset PicSchool
	mov [character], offset PicTech3Blush
	mov [character_Width], 81
	mov [character_Height],120
	call SceneText
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_5
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_6
	mov [backGround], offset PicSchool
	mov [character], offset PicTech3Happy
	mov [character_Width], 81
	mov [character_Height],120
	call SceneText
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_7
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_8
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_9
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_10
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_11
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_12
	mov [backGround], offset PicSchool
	mov [character], offset PicTech3Blush
	mov [character_Width], 81
	mov [character_Height],120
	call SceneText
	
	mov [SpeakerName], offset Name_Kid
	mov [textForText], offset Text_Classrom_Teach3_13
	call SceneTextNoChange
	
	mov [SpeakerName], offset Name_Teacher
	mov [textForText], offset Text_Classrom_Teach3_14
	call SceneTextNoChange
	
	mov [backGround], offset PicTech3End
	call SceneTheEnd
	jmp exit

exit:

	mov ax, 0 
	int 16h
	
	mov ax,2
	int 10h
	
	mov ah, 0
	int 33h
	
	mov ax, 4c00h
	int 21h
;;;;;;;;;;;;;;;

proc SceneQuestion
	push bx
	mov [TextMode],0
	
	mov dx, offset FileNameChoseQ
	mov [BmpLeft], 0
	mov [BmpTop], 147
	mov [BmpWidth], 320
	mov [BmpHeight] ,53
	call OpenShowBmp
	
	mov bx , [Button2_Text]
	mov [GoDownAt],115
	Mov [X_Right],32
	mov [Y_Right],153
	call WrightOn
	mov bx , [Button1_Text]
	mov [GoDownAt],270
	Mov [X_Right],184
	mov [Y_Right],153
	call WrightOn
	mov bx , [Button3_Text]
	mov [GoDownAt],115
	Mov [X_Right],32
	mov [Y_Right],178
	call WrightOn
	mov bx , [Button4_Text]
	mov [GoDownAt],270
	Mov [X_Right],184
	mov [Y_Right],178
	call WrightOn
	
	
	
	
	mov [Whaite],1
	SHOW_M
@@lop:
	cmp [Whaite], 1
	jz @@lop
	
	
	pop bx
	ret
endp SceneQuestion


proc AddCharacter
	call ResetPoints
	push ax
	push bx
	mov [TextMode],1 
	;draw character
	mov dx, [character]
	mov ax, [character_Width]
	mov bx, [character_Height]
	
	mov [BmpWidth], ax
	mov [BmpHeight] ,bx
	mov ax , 147
	sub ax, bx
	mov [BmpTop],ax
	call OpenShowBmp
	
	call drawText
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop
	

	pop bx
	pop ax
	ret
endp AddCharacter


proc SceneText
	call ResetPoints
	push ax
	push bx
	mov [TextMode],1
	;draw back ground
	mov dx, [backGround]
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,147
	call OpenShowBmp 
	;draw character
	mov dx, [character]
	mov ax, [character_Width]
	mov bx, [character_Height]
	mov [BmpLeft],186
	
	mov [BmpWidth], ax
	mov [BmpHeight] ,bx
	mov ax , 147
	sub ax, bx
	mov [BmpTop],ax
	call OpenShowBmp
	
	call drawText
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop
	

	pop bx
	pop ax
	ret
endp SceneText

proc SceneTextNoCharecters
	call ResetPoints
	push ax
	push bx
	mov [TextMode],1
	;draw back ground
	mov dx, [backGround]
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,147
	call OpenShowBmp 
	
	call drawText
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop
	

	pop bx
	pop ax
	ret
endp SceneTextNoCharecters

proc SceneFullScreen
	call ResetPoints
	push ax
	push bx
	mov ax,0
	int 33h
	call setAsyncMouseClick
	;draw back ground
	mov dx, [backGround]
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	call OpenShowBmp 
	
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop
	
	call setAsyncMouse
	pop bx
	pop ax
	ret
endp SceneFullScreen

proc SceneTheEnd
	call ResetPoints
	push ax
	push bx
	mov ax,0
	int 33h
	call setAsyncMouseClick
	;draw back ground
	mov dx, [backGround]
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	call OpenShowBmp 
	
	mov dx, Offset picTheEnd
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,136
	call OpenShowBmp 
	
	
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop

	pop bx
	pop ax
	ret
endp SceneTheEnd

proc myMouseHandleclick far 
	push cx
	CHECK_M
	cmp bx, 1
	jne DidntClick
	mov [Whaite],0	 
DidntClick:
	pop cx
	retf
endp myMouseHandleclick

proc setAsyncMouseClick
	
	mov ax, seg myMouseHandleclick
	mov es, ax
	mov dx, offset myMouseHandleclick
	mov ax, 0ch
	mov cx, 3h
	int 33h

	ret
endp setAsyncMouseClick


proc SceneTextNoChange
	call ResetPoints
	push ax
	push bx
	mov [TextMode],1
	
	call drawText
	mov [Whaite],1
	SHOW_M
	
@@lop:
	cmp [Whaite], 1
	jz @@lop
	

	pop bx
	pop ax
	ret
endp SceneTextNoChange



proc ResetPoints
	mov [SansLikabilityAddButon1] , 0

	mov [PapyrusLikabilityAddButon1] , 0

	mov [TorielLikabilityAddButon1] , 0
	 
	mov [UndyneLikabilityAddButon1] , 0
	 
	mov [AlphysLikabilityAddButon1] , 0

	mov [WDGasterLikabilityAddButon1] , 0

	
	
	mov[SansLikabilityAddButon2] , 0

	mov[PapyrusLikabilityAddButon2] , 0


	mov[TorielLikabilityAddButon2] , 0


	mov[UndyneLikabilityAddButon2] , 0


	mov[AlphysLikabilityAddButon2] , 0

	mov[WDGasterLikabilityAddButon2] , 0



	mov[SansLikabilityAddButon3] , 0

	mov[PapyrusLikabilityAddButon3] , 0


	mov[TorielLikabilityAddButon3] , 0


	mov[UndyneLikabilityAddButon3] , 0


	mov[AlphysLikabilityAddButon3] , 0


	mov[WDGasterLikabilityAddButon3] , 0
	
	
	mov[SansLikabilityAddButon4] , 0


	mov[PapyrusLikabilityAddButon4] , 0


	mov[TorielLikabilityAddButon4] , 0


	mov[UndyneLikabilityAddButon4] , 0


	mov[AlphysLikabilityAddButon4] , 0


	mov[WDGasterLikabilityAddButon4] , 0


	

	ret
endp ResetPoints


proc WrightOn
	push bx
	mov bx, [X_Right]
	sub bx, 4
	mov [X_Start], bx	
	pop bx
	
@@wright:
	mov al, [bx]
	push bx
	
	
	cmp al ,'$'
	jz @@endRight
	cmp al, ' '
	jne @@dontAddToY
	mov bx, [GoDownAt]
	cmp [X_Right], bx
	jb	@@dontAddToY
	add [Y_Right],8
	mov bx, [X_Start]
	mov [X_Right],bx
@@dontAddToY:
	mov bx, [GoDownAt]
	add bx, 15
	cmp [X_Right],bx
	jb stillGood
	mov dx, offset Letter_Dash
	mov [BmpWidth],3
	call Wright_TheLatter 
	add [Y_Right],8
	mov bx, [X_Start]
	add bx, 4
	mov [X_Right],bx
stillGood:	
	
	mov [TheLetter], al
	call wrightLetter
	call whait 
	pop bx
	inc bx
	
	jmp @@wright
@@endRight:
	pop bx
	
	ret
endp WrightOn


proc whait
	mov cx,300
@@l1:
	push cx
	mov cx, 150
@@l2:
	loop @@l2
	pop cx
	loop @@l1
	ret
endp whait




proc goToGrafic
	mov ax, 13h
	int 10h
	
	mov ax,0
	int 33h
	
	ret
endp goToGrafic


proc clicButon1
	push bx
	
	mov [IsOnUR],0
	
	mov bl, [SansLikabilityAddButon1]
	add [SansLikability],bl

	mov bl, [PapyrusLikabilityAddButon1]
	add [PapyrusLikability],bl

	mov bl, [TorielLikabilityAddButon1]
	add [TorielLikability],bl

	mov bl, [UndyneLikabilityAddButon1]
	add [UndyneLikability], bl

	mov bl, [AlphysLikabilityAddButon1] 
	add [AlphysLikability],bl


	mov bl, [WDGasterLikabilityAddButon1]
	add [WDGasterLikability],bl

	mov[TextMode],1
	mov [Whaite],0
	
	
	pop bx
	ret
endp clicButon1



proc clicButon2
	push bx
	
	mov [IsOnUL],0
	
	mov bl, [SansLikabilityAddButon2]
	add [SansLikability],bl

	mov bl, [PapyrusLikabilityAddButon2]
	add [PapyrusLikability],bl

	mov bl, [TorielLikabilityAddButon2]
	add [TorielLikability],bl

	mov bl, [UndyneLikabilityAddButon2]
	add [UndyneLikability], bl

	mov bl, [AlphysLikabilityAddButon2] 
	add [AlphysLikability],bl

	mov bl, [WDGasterLikabilityAddButon2]
	add [WDGasterLikability],bl

	mov[TextMode],1
	mov [Whaite],0
	
	
	pop bx
	ret
endp clicButon2
	


proc clicButon3
	push bx
	
	mov [IsOnDL],0
	
	mov bl, [SansLikabilityAddButon3]
	add [SansLikability],bl


	mov bl, [PapyrusLikabilityAddButon3]
	add [PapyrusLikability],bl

	mov bl, [TorielLikabilityAddButon3]
	add [TorielLikability],bl

	mov bl, [UndyneLikabilityAddButon3]
	add [UndyneLikability], bl

	mov bl, [AlphysLikabilityAddButon3] 
	add [AlphysLikability],bl


	mov bl, [WDGasterLikabilityAddButon3]
	add [WDGasterLikability],bl

	mov[TextMode],1
	mov [Whaite],0
	
	
	pop bx
	ret
endp clicButon3



proc clicButon4
	push bx
	
	mov [IsOnDR],0
	
	mov bl, [SansLikabilityAddButon4]
	add [SansLikability],bl

	mov bl, [PapyrusLikabilityAddButon4]
	add [PapyrusLikability],bl


	mov bl, [TorielLikabilityAddButon4]
	add [TorielLikability],bl

	mov bl, [UndyneLikabilityAddButon4]
	add [UndyneLikability], bl

	mov bl, [AlphysLikabilityAddButon4] 
	add [AlphysLikability],bl


	mov bl, [WDGasterLikabilityAddButon4]
	add [WDGasterLikability],bl

	mov [TextMode],1
	mov [Whaite],0
	
	pop bx
	ret
endp clicButon4
	

proc drawChosenButton 
	;mov dx, offset FileNameChoseDR
	mov [BmpLeft],0
	mov [BmpTop],147
	mov [BmpWidth], 320
	mov [BmpHeight] ,53
	call OpenShowBmp 
	
	Resetall
	;mov [IsOnDR],1
	
	

	ret
endp drawChosenButton 

proc drawText 
	mov dx, offset FileNameText
	mov [BmpLeft],0
	mov [BmpTop],147
	mov [BmpWidth], 320
	mov [BmpHeight] ,53
	call OpenShowBmp 
	
	Resetall
	mov [textIson],1
	
	mov bx , [SpeakerName]
	mov [GoDownAt],270
	Mov [X_Right],32
	mov [Y_Right],153
	call WrightOn
	
	mov bx , [textForText]
	mov [GoDownAt],270
	Mov [X_Right],32
	mov [Y_Right],165
	call WrightOn
	

	ret
endp drawText

proc clicked
	cmp [IsOnNan],1
	je @@end
	cmp [IsOnUR],1
	jne didUL
	call clicButon1
	jmp @@end
didUL:	
	cmp [IsOnUL],1
	jne didDL
	call clicButon2
	jmp @@end
didDL:	
	cmp [IsOnDL],1
	jne didDR
	call clicButon3
	jmp @@end
didDR:	
	cmp [IsOnDR],1
	jne @@end
	call clicButon4
	
@@end:
	ret
endp clicked

proc myMouseHandle far

	shr cx, 1
	mov [Xclick], cx
	mov [Yclick], dx
	cmp [TextMode], 0
	jz ChoseAns
	jmp nowText
ChoseAns:
	mov [textIson], 0
	push cx
	CHECK_M
	 cmp bx, 1
	 jne @@DidntClick
	 call clicked	 
@@DidntClick:
	pop cx
	cmp dx,147
	ja InTheGride
	mov[neadToChangeNan], 1
	jmp MakeChange
InTheGride:
	cmp cx, 25
	ja NotToLeft
	mov [neadToChangeNan], 1
	jmp MakeChange
NotToLeft:
	cmp cx, 295
	jb NotToRight
	mov [neadToChangeNan], 1
	jmp MakeChange
NotToRight:
	cmp cx, 143
	ja NotTheLefties
	cmp dx,174
	jb TheUpOneL
	mov [neadToChangeDL],1
	jmp MakeChange
TheUpOneL:
	mov [neadToChangeUL],1
	jmp MakeChange
NotTheLefties:
	
	cmp cx, 177
	jb NotTheRighties
	cmp dx,174
	jb TheUpOneR
	mov [neadToChangeDR],1
	jmp MakeChange
TheUpOneR:
	mov [neadToChangeUR],1
	jmp MakeChange
NotTheRighties:
	mov [neadToChangeNan], 1
	

MakeChange:	
	cmp [neadToChangeNan],1
	jne CheckUL
	mov [neadToChangeNan], 0
	cmp [IsOnNan],1
	jne NanOn
	jmp LastRet
NanOn:	
	
	mov dx, offset FileNameChoseNan
	call drawChosenButton
	mov [IsOnNan],1
	
	jmp LastRet
	
CheckUL:	
	
	cmp [neadToChangeUL],1
	jne CheckDL
	mov [neadToChangeUL], 0
	cmp [IsOnUL],1
	jne ULOn
	jmp LastRet
ULOn:	
	
	mov dx, offset FileNameChoseUL
	call drawChosenButton
	mov [IsOnUL],1
	
	jmp LastRet
	
CheckDL:
	
	cmp [neadToChangeDL],1
	jne CheckUR
	mov [neadToChangeDL], 0
	cmp [IsOnDL],1
	je LastRet
	
	mov dx, offset FileNameChoseDL
	call drawChosenButton
	mov [IsOnDL],1
	
	jmp LastRet
	
CheckUR:

	cmp [neadToChangeUR],1
	jne CheckDR
	mov [neadToChangeUR], 0
	cmp [IsOnUR],1
	je LastRet
	
	mov dx, offset FileNameChoseUR
	call drawChosenButton
	mov [IsOnUR],1
	
	jmp LastRet
	
CheckDR:

	cmp [neadToChangeDR],1
	jne LastRet
	mov [neadToChangeDR], 0
	cmp [IsOnDR],1
	je LastRet
	
	mov dx, offset FileNameChoseDR
	call drawChosenButton
	mov [IsOnDR],1
		
	jmp LastRet

nowText:
	push bx
	CHECK_M
	 cmp bx, 1
	 jne dontChange
	 mov [Whaite],0	
dontChange: 
	pop bx
;	cmp [textIson],1
;	je LastRet
;	
;	call drawText
		
		
LastRet:
	

	retf
endp myMouseHandle


proc setAsyncMouse
	
	mov ax, seg myMouseHandle
	mov es, ax
	mov dx, offset myMouseHandle
	mov ax, 0ch
	mov cx, 3h
	int 33h

	ret
endp setAsyncMouse

proc wrightLetter
	push ax
	push si
	cmp [TheLetter],' '
	jne Checksmall
	add [X_Right], 4 
	jmp @@end
Checksmall:	
	cmp [TheLetter],97
	jb CheckBig
	mov al, [TheLetter]
	mov [Letter_Small+22],al
	mov [Letter_Small+23],al
	mov dx, offset Letter_Small
	call Wright_TheLatter
	jmp @@end
CheckBig:	
	cmp [TheLetter],64
	jb CheckSimbole
	mov al, [TheLetter]
	mov [Letter_Big+22],al
	mov dx, offset Letter_Big
	call Wright_TheLatter
	jmp @@end
CheckSimbole:
	call WrigthSimbole
@@end:
	pop si
	pop ax
	ret
endp wrightLetter


proc WrigthSimbole
	push si
	cmp [TheLetter],","
	jne @@CheckDot
	
	mov dx, offset Letter_Comma
	
	jmp @@end
@@CheckDot:
	cmp [TheLetter],"."
	jne @@CheckApostrophe
	
	mov dx, offset Letter_Dot
	
	jmp @@end

@@CheckApostrophe:
	cmp [TheLetter],"'"
	jne @@CheckExclamation
	
	mov dx, offset Letter_Apostrophe
	
	jmp @@end
@@CheckExclamation:
	cmp [TheLetter],"!"
	jne @@Check?
	
	mov dx, offset Letter_Exclamation
	
	jmp @@end
@@Check?:
	cmp [TheLetter],"?"
	jne @@CheckDash
	
	mov dx, offset Letter_?
	
	jmp @@end
@@CheckDash:
	cmp [TheLetter],"-"
	
	mov dx, offset Letter_Dash
	
@@end:
	call Wright_TheLatter
	pop si
	ret
endp WrigthSimbole


proc Wright_TheLatter
	call getWidth
	
	push bx
	mov bx, [X_Right]
	mov [BmpLeft],bx
	mov bx, [Y_Right]
	mov [BmpTop],bx
	call OpenShowBmp
	mov bx, [BmpWidth]	
	inc bx
	add [X_Right],bx
	pop bx
	ret

	ret
endp Wright_TheLatter


proc getWidth
	
	pushAll
	 HIDE_M
	call OpenBmpFile
	
	cmp [ErrorFile],1
	je @@ExitProc
	
	call ReadBmpHeader
	
	push cx
	push dx
	
	mov ah,3fh
	mov bx, [word Header+18]
	mov [BmpWidth],bx
	mov bx,[word Header+22]
	mov [BmpHeight],bx
	mov cx,1
	mov dx,offset BmpWidth
	int 21h
	
	pop dx
	pop cx
	 
	call CloseBmpFile

@@ExitProc:
	SHOW_M
	popAll
	
	
	
	ret
endp getWidth


proc OpenShowBmp near
	pushAll
	 HIDE_M
	call OpenBmpFile
	cmp [ErrorFile],1
	je @@ExitProc
	
	call ReadBmpHeader
	
	call ReadBmpPalette
	
	call CopyBmpPalette
	
	call  ShowTransBMP
	
	 
	call CloseBmpFile

@@ExitProc:
	SHOW_M
	popAll
	ret
endp OpenShowBmp



 proc OpenBmpFile					 
	mov ah, 3Dh
	xor al, al
	int 21h
	jc @@ErrorAtOpen
	mov [FileHandle], ax
	jmp @@ExitProc
	
@@ErrorAtOpen:
	mov [ErrorFile],1
@@ExitProc:	
	ret
endp OpenBmpFile

	
proc CloseBmpFile near
	mov ah,3Eh
	mov bx, [FileHandle]
	int 21h
	ret
endp CloseBmpFile

proc ReadBmpHeader	near					
	push cx
	push dx
	
	mov ah,3fh
	mov bx, [FileHandle]
	mov cx,54
	mov dx,offset Header
	int 21h
	
	pop dx
	pop cx
	ret
endp ReadBmpHeader

proc ReadBmpPalette near ; Read BMP file color palette, 256 colors * 4 bytes (400h)
						 ; 4 bytes for each color BGR + null)			
	push cx
	push dx
	
	mov ah,3fh
	mov cx,400h
	mov dx,offset Palette
	int 21h
	
	pop dx
	pop cx
	
	ret
endp ReadBmpPalette


proc CopyBmpPalette	near					
										
	push cx
	push dx
	
	mov si,offset Palette
	mov cx,256
	mov dx,3C8h
	mov al,0  ; black first							
	out dx,al ;3C8h
	inc dx	  ;3C9h
CopyNextColor:
	mov al,[si+2] 		; Red				
	shr al,2 			; divide by 4 Max (cos max is 63 and we have here max 255 ) (loosing color resolution).				
	out dx,al 						
	mov al,[si+1] 		; Green.				
	shr al,2            
	out dx,al 							
	mov al,[si] 		; Blue.				
	shr al,2            
	out dx,al 							
	add si,4 			; Point to next color.  (4 bytes for each color BGR + null)				
								
	loop CopyNextColor
	
	pop dx
	pop cx
	
	ret
endp CopyBmpPalette

proc ShowBMP
; BMP graphics are saved upside-down.
; Read the graphic line by line (BmpHeight lines in VGA format),
; displaying the lines from bottom to top.
	push cx
	
	mov ax, 0A000h
	mov es, ax
	
 
	mov ax,[BmpWidth] ; row size must dived by 4 so if it less we must calculate the extra padding bytes
	mov bp, 0
	and ax, 3
	cmp ax, 0 
	jz @@row_ok
	mov bp,4
	sub bp,ax

@@row_ok:	
	mov cx,[BmpHeight]
    dec cx
	add cx,[BmpTop] ; add the Y on entire screen
	; next 5 lines  di will be  = cx*320 + dx , point to the correct screen line
	mov di,cx
	shl cx,6
	shl di,8
	add di,cx
	add di,[BmpLeft]
	cld ; Clear direction flag, for movsb forward
	
	mov cx, [BmpHeight]
@@NextLine:
	push cx
 
	; small Read one line
	mov ah,3fh
	mov cx,[BmpWidth]  
	add cx,bp  ; extra  bytes to each row must be divided by 4
	mov dx,offset ScrLine
	int 21h
	; Copy one line into video memory es:di
	mov cx,[BmpWidth]  
	mov si,offset ScrLine
	rep movsb ; Copy line to the screen
	sub di,[BmpWidth]            ; return to left bmp
	sub di,SCREEN_WIDTH  ; jump one screen line up
	
	pop cx
	loop @@NextLine
	
	pop cx
	ret
endp ShowBMP

proc ShowTransBMP
; BMP graphics are saved upside-down.
; Read the graphic line by line (BmpHeight lines in VGA format),
; displaying the lines from bottom to top.
    push cx
    push si
    
    mov ax, 0A000h
    mov es, ax
    
 
    mov ax,[BmpWidth] ; row size must dived by 4 so if it less we must calculate the extra padding bytes
    mov bp, 0
    and ax, 3
    cmp ax, 0 
    jz @@row_ok
    mov bp,4
    sub bp,ax

@@row_ok:    
    mov cx,[BmpHeight]
    dec cx
    add cx,[BmpTop] ; add the Y on entire screen
    ; next 5 lines  di will be  = cx*320 + dx , point to the correct screen line
    mov di,cx
    shl cx,6
    shl di,8
    add di,cx
    add di,[BmpLeft]
    cld ; Clear direction flag, for movsb forward
    
    mov cx, [BmpHeight]
@@NextLine:
    push cx
 
    ; small Read one line
    mov ah,3fh
    mov cx,[BmpWidth]  
    add cx,bp  ; extra  bytes to each row must be divided by 4
    mov dx,offset ScrLine
    int 21h
    ; Copy one line into video memory es:di
    mov cx,[BmpWidth]  
    mov si,offset ScrLine
@@draw:
    cmp [byte si],05h
    je @@trans
    
    movsb
    jmp @@end
    
@@trans:
    inc di
    inc si
    
@@end:
    loop @@draw
        
    sub di,[BmpWidth]
    sub di,SCREEN_WIDTH
    
    pop cx
    loop @@NextLine

    pop si
    pop cx
    ret
endp ShowTransBMP
	


	
END start


