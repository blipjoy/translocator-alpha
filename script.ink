__Translocator Alpha__ by ==BlipJoy== #TITLE

-> intro

// TODO: Most of these were never finished. I ran out of time!
//LIST parts = (toolbox), (luminiferous_optocoupler)
//LIST parts_for_thorne = (conduit), (aetherium_capsule)
//LIST parts_for_sterling = (lattice), (quark_splitter)
//LIST parts_for_standish = (magneto_resonator), (mainspring)
//LIST parts_for_bradford = (condenser), (reagents)

LIST parts = (toolbox)
LIST parts_for_bradford = (reagents)

VAR parts_needed = ()
VAR inventory = ()

CONST EXPLORE_WORKSHOP = 6
VAR workshop_explored = 0

VAR requested_grant = 0
VAR solved_safety_problem = false

=== function print_parts_needed() ===
    ~ temp to_print = parts_needed - inventory

    {to_print ? toolbox: some tools,}
    ~ to_print -= toolbox
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? luminiferous_optocoupler: a luminiferous optocoupler,}
    //~ to_print -= luminiferous_optocoupler
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? conduit: a conduit,}
    //~ to_print -= conduit
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? aetherium_capsule: an aetherium capsule,}
    //~ to_print -= aetherium_capsule
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? lattice: a lattice,}
    //~ to_print -= lattice
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? quark_splitter: a quark splitter,}
    //~ to_print -= quark_splitter
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? magneto_resonator: a magneto resonator,}
    //~ to_print -= magneto_resonator
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? mainspring: a mainspring,}
    //~ to_print -= mainspring
    //<>{LIST_COUNT(to_print) == 1: and}
    //<>{to_print ? condenser: a condenser,}
    //~ to_print -= condenser
    <>{LIST_COUNT(to_print) == 1: and}
    <>{to_print ? reagents: reagents,}
    ~ return

=== intro ===
<- my_toolbox(-> intro)
* { workshop_explored < EXPLORE_WORKSHOP } [tag: cogs1]
    At my cluttered workbench, gears and steam-powered gauges lay scattered haphazardly. The commencement of my most ambitious creation unfolds before me. An automechanical marvel, a carriage that traverses the ground, sails the skies, and plunges into the depths of the unknown!
    As for my esteemed peers at the University, their incredulity shall know no bounds. Alas, this skepticism has become a persistent thorn in my side as of late.
    ~ workshop_explored += 1

* { workshop_explored < EXPLORE_WORKSHOP } [tag: cogs2]
    Surveying the disarray of this workshop, it transports me back to my days as an eager undergraduate. The echoes of my professors' chastising words resonate once more. They used to scold me for prioritizing innovation over maintaining a tidy workspace.
    I've never been one to excel in the art of organization, especially when my mind ignites with creativity like a cascade of vibrant fireworks.
    ~ workshop_explored += 1

* { workshop_explored < EXPLORE_WORKSHOP } [tag: cogs3]
    In the aftermath of the recent mishap that cost me my grant, I've found myself without the means to secure the vital component for the automechanical multicarriage - a steam engine of unparalleled power capable of ferrying four individuals across a 400-mile span before the need for refueling the boiler arises.
    Yet, this exceptional engine carries a staggering price tag of $5,000, far surpassing the modest $2,000 grant I once possessed. The quest for such a substantial sum appears to be an insurmountable challenge.
    ~ workshop_explored += 1

* { workshop_explored < EXPLORE_WORKSHOP } [tag: chemistry]
    A flask and beaker are hard at work, distilling an unconventional fuel derived from corn, if you can fathom it! Crafting an engine that can safely burn this fuel has confounded even the most ingenious minds. However, I've stumbled upon a peculiar revelation - imbibing this elixir induces a delightful and, if I may dare to say, intoxicating effect.
    ~ workshop_explored += 1

* { workshop_explored < EXPLORE_WORKSHOP } [tag: electrode]
    Take note of this fantastical contraption, a whimsical creation of the ingenious young inventor, Faraday. Astonishingly, it is the same daring visionary who bestowed upon us the formula for the corn fuel, a testament to his remarkable ingenuity.
    ~ workshop_explored += 1

* { workshop_explored < EXPLORE_WORKSHOP } [tag: multicarriage]
    Behold my life's opus, the extraordinary automechanical multicarriage! I'm utterly convinced that it will redefine the very essence of transportation for all. If only I could uncover a path to acquire the means for the exorbitant steam engine it demands, or, perhaps, dare to dream, engineer one from scratch.
    ~ workshop_explored += 1

+ { workshop_explored < EXPLORE_WORKSHOP } [tag: to-outside-workshop]
    I pause, my mind momentarily adrift in contemplation. It's the workshop where my responsibilities truly lie.

+ { workshop_explored < EXPLORE_WORKSHOP } [tag: garage-door]
    My restless legs would undoubtedly lead me away from my work were it not for my fervor for creation.
-
{ workshop_explored >= EXPLORE_WORKSHOP:
    -> haverhill_introduction
}
-
-> intro

=== haverhill_introduction
SPAWN_AT(workshop-entrance, haverhill)
CUTSCENE(haverhill, intro-cutscene)

Amidst the clinking of metal and steam hisses, an unannounced voice shatters my concentration.
"Pendleton! I knew I might find you amidst these cogs and gears," says the imposing figure, Vice-Chancellor Haverhill.
I adjust my disheveled attire and extend a cordial nod. "Vice-Chancellor Haverhill, it is indeed a surprise and a pleasure to see you in my humble workshop."
Vice-Chancellor Haverhill, a man of refined mutton-chop whiskers and an air of academic authority, takes in the whirlwind of invention around him. "Of course, Professor Pendleton. But, time is of the essence. Your absence from the lecture on the translocator experiment has not gone unnoticed. Do you intend to join us?"
He leans in, emphasizing the urgency in his voice. "In fact, I insist you come immediately."

- (argue)

* "Your invitation is most gracious[."]," I respond, my excitement and nervous energy palpable. "I need only a few more hours to resolve a minor quandary concerning the quantum entanglement interface."

* ["About the grant I lost..."]
    "Vice-Chancellor, there is another pressing matter that weighs heavily on my shoulders, the grant I lost recently," I assert with a firm tone.
    Deflecting the request, Haverhill continues to implore, "There will be time for that soon enough, Professor Pendleton! I must be on my way, with you not too far behind, I presume."
    ~ requested_grant += 1
    -> argue
-

Vice-Chancellor Haverhill's expression remains unyielding. "Professor Pendleton, the university and your colleagues eagerly await your expertise. You must join the lecture hall without delay."
As Vice-Chancellor Haverhill departs with a dignified turn, I understand the gravity of the situation and the urgency of my presence. The fate of the translocator experiment hangs in the balance, and I must heed the Vice-Chancellor's insistence.

CUTSCENE(haverhill, leave-cutscene)
SPAWN_AT(haverhill-despawn, haverhill)
-> workshop

=== workshop ===
<- my_toolbox(-> workshop)
* { parts_needed ? toolbox } [tag: toolbox]
    Indeed, this toolbox shall play a pivotal role in the success of the project recently placed in my care!
    ~ inventory += toolbox
    SPAWN_AT(toolbox-despawn, toolbox)

+ [tag: to-outside-workshop]
    SPAWN_AT(workshop-exit)
    -> outside_workshop
-
-> workshop

=== my_toolbox(-> return_to) ===
+ { parts_needed !? toolbox } [tag: toolbox]
    This toolbox, a cherished heirloom from my grandfather, holds sentimental value, but its true significance lies in its role in the restoration of the automechanical multicarriage!
-
-> return_to

=== outside_workshop ===
+ [tag: to-workshop]
    SPAWN_AT(workshop-entrance)
    -> workshop

+ [tag: to-outside-university]
    SPAWN_AT(outside-university-entrance)
    -> outside_university
-
-> outside_workshop

=== outside_university ===
+ [tag: to-outside-workshop]
    SPAWN_AT(outside-workshop-entrance)
    -> outside_workshop

+ [tag: to-university]
    SPAWN_AT(university-entrance)
    -> university
-
-> outside_university

=== university ===
* [tag: receptionist]
    "Good day, Professor. The group has already commenced without you. They are assembled in Room 1," the receptionist conveys with courtesy, though a faint undercurrent of irritation colors their words.

+ [tag: to-university-hall]
    SPAWN_AT(university-hall-entrance)
    -> university_hall

+ [tag: leave-university]
    SPAWN_AT(university-exit)
    -> outside_university
-
-> university

=== university_hall
+ [tag: to-university-reception]
    SPAWN_AT(university-hall-exit)
    -> university

+ [tag: to-university-room-1]
    SPAWN_AT(university-room-1)
    -> university_room_1
-
-> university_hall

=== university_room_1 ===
* [tag: argument-cutscene]
    -> argument_cutscene

* [tag: translocator-team]
    "Punctuality becomes you, Pendleton," Standish sneers. "It seems we've encountered a hiccup with the experiment's safety protocol. Progress shall remain at a standstill until we resolve this matter."

    ** (thorne) [Thorne mentioned stability...] "Professor Thorne, you mentioned the importance of stability, did you not?" I inquired, setting aside my tardiness for the moment.

        "Indeed, I did," replied Thorne with a discerning nod. "I appreciate your attentiveness. May I presume you concur that aetherium conduits offer a solution to this safety concern?"
        ~ parts_needed = parts // + parts_for_thorne

    ** (sterling) [Sterling mentioned safety...] "Dr. Sterling, you have placed saftey at the forefront of your argument," I observed, momentarily disregarding my earlier tardiness.

        "Quantum tunneling, without a doubt," exclaimed Sterling, eager for acknowledgment, "holds the most impeccable safety record within modern science. Would you not concur?"
        ~ parts_needed = parts // + parts_for_sterling

    ** (standish) [Standish mentioned precision...] "Professor Standish, we would greatly appreciate your insights on the precision required to achieve our safety objectives," I replied, temporarily setting aside my earlier tardiness.

        "Precision gears milled to a tolerance of merely 10 microns, and resonance frequencies of a coil calibrated to within 2 standard deviations from the mean," Standish expounded at length, as if time stood still. "Precision is the sole path to ensuring the safety of human translocation."
        ~ parts_needed = parts // + parts_for_standish

    ** (bradford) [Bradford mentioned alchemy...] "Dr. Bradford, you are certain that the alchemical condensers will satisfy the experiment's safety requisites, are you not?" I directed my inquiry to the engineer, momentarily setting aside my earlier tardiness.

        "Indeed, safety alone would be an understatement!" The zealous doctor exclaimed. "When reagents are combined with precise proportions, the condensers can significantly enhance efficacy. They are remarkably safe by all indications."
        ~ parts_needed = parts + parts_for_bradford
    --
    "Indeed, I must concur. I have yet to hear a more convincing thesis," I responded with a measured intensity, much like a coiled serpent ready to strike. "With the exception of thermionic interpolation, naturally. Research from Cambridge suggests it holds the most promise among our options."

    The group fell into a contemplative silence, their eyes locking onto each other in a shared moment of understanding. After a few moments, they began to nod in unison. Filled with exasperation, Standish blurted out, "It's astonishingly straightforward. Why didn't I conceive of it?"

    "Because you're not Pendleton," Thorne conceded, a hint of admiration in her tone. "None of us are," she added, fixing her eyes on me with approval.

    "I shall procure the essential components for a thermionic interpolator and the <>
    {university_room_1.thorne: aetherium conduits}
    {university_room_1.sterling: quantum tunneling lattices}
    {university_room_1.standish: chronomagnetic resonance coils}
    {university_room_1.bradford: alchemical condensers}
    <>," I declared promptly. "And I shall require your expertise with the latter, <>
    {university_room_1.thorne: Professor Thorne}
    {university_room_1.sterling: Dr. Sterling}
    {university_room_1.standish: Professor Standish}
    {university_room_1.bradford: Dr. Bradford}
    <>."

    "I am at your service, Professor," <>
    {university_room_1.thorne: Thorne }
    {university_room_1.sterling: Sterling }
    {university_room_1.standish: Standish }
    {university_room_1.bradford: Bradford }
    <> replied with formal decorum.

    ~ solved_safety_problem = true

+ { solved_safety_problem == true } [tag: translocator-team]
    "Greetings, dear Pendleton! How may we be of service on this splendid day?" {~Thorne|Sterling|Standish|Bradford} inquired.

    "This is a list of all I have gathered thus far," I presented. "Is there anything else we require?"

    {
        - inventory == parts_needed:
            "Indeed, that is everything we require. Let us proceed with the construction of the translocator," {~Thorne|Sterling|Standish|Bradford} suggests.

            SPAWN_AT(translocator-spawn-1, translocator-1)
            SPAWN_AT(translocator-spawn-2, translocator-2)

            \~~CLANK!~~ ==BONK!== \#\#POW!\#\#

            "The translocator is now finished," I declared. "Shall I make the initial attempt?"

            "The honor is yours, and surely, you have earned it," {~Thorne|Sterling|Standish|Bradford} responded graciously.
        - else:
            "Upon comparing the components you've gathered with the components we require, it appears that you are indeed missing {print_parts_needed()}" {~Thorne|Sterling|Standish|Bradford} observed.
    }

* { solved_safety_problem == false } [tag: haverhill]
    "I am solely present for oversight, Pendleton," Haverhill sighed. "Have you managed to resolve the safety issue, as of yet?"

    ** ["About my grant..."] "It is of paramount importance that I discuss my grant with you," I declared, giving no thought to the safety issue.

        "Your foremost concern should be dedicated to the translocator experiment, especially its safety for human travel," Haverhill advised.
        ~ requested_grant += 1

    ** "I've only just arrived[."] at the university," I inquired, my curiosity piqued. "How is it that I departed my workshop after you, yet you arrive at the lecture after me?"

        "Dismiss the peculiarities for now. We have a task at hand," Haverhill stated.
    --

* { solved_safety_problem == true } [tag: haverhill]
    "We have reached a consensus regarding the experiment's safety concern," I declared.

    ** { requested_grant < 2 } [auto: invisible action]
        "Fine work! I must now attend to another commitment. Please keep me updated, for you are aware of the vital importance of this experiment to the university," Haverhill conveyed.

    ** { requested_grant >= 2 } [auto: invisible action]
        "Excellent news!" Haverhill exclaimed. "You must pay me a visit in my office after the experiment succeeds, as I am confident it will. The matter of your grant still requires our attention."

        "I am profoundly thankful. Does tomorrow at noon suit you?" My enthusiasm outpaces me.

        "Nonsense! You have a fortnight until the deadline, and even that timeline is overly ambitious," Haverhill remarked astutely. "Your grant shall come your way in due course, I am certain."
    --

    CUTSCENE(haverhill, leave-room-1-cutscene)
    SPAWN_AT(haverhill-despawn, haverhill)

* { parts_needed ? reagents } [tag: reagents]
    "I thought that appeared familiar! This vial of reagents is bound to bring a smile to Bradford's face. Although the indolent fellow could have easily gathered it himself, as his gaze presently bores into the back of my head."
    ~ inventory += reagents

+ [tag: translocator-1]
    SPAWN_AT(warp-2)
    -> ending_cutscene

+ [tag: translocator-2]
    SPAWN_AT(warp-1)
    -> ending_cutscene

+ [tag: to-university-hall-1]
    SPAWN_AT(university-room-1-exit)
    -> university_hall
-
-> university_room_1

=== argument_cutscene ===
As Professor Pendleton steps into the dimly lit lecture hall, the voices of his colleagues resound in a spirited debate. They've gathered around the auditorium stage, the floor covered in mechanical blueprints, strange contraptions, and arcane devices.

Professor Thorne, a formidable woman with a no-nonsense demeanor, insists, "I'm certain that aetherium conduits are the only logical choice for instantaneous translocation. Their stability is unrivaled."

Dr. Sterling, a young and enthusiastic inventor, counters, "Nay, Professor Thorne! Quantum tunneling lattices are the way of the future. They promise the utmost precision and safety."

Professor Standish, known for his obsession with clockwork intricacies, chimes in, "Thorne, Sterling, you're both overlooking the precision gears and chronomagnetic resonance coils. They are the key to a seamless transition."

"No," argues Dr. Bradford, a meticulous engineer with an eye for detail, "it's all about the alchemical condensers, precise blends of reagents for instantaneous phase-shift translocation."

* [Interrupt and announce your arrival.]
* [Comment on thermionic interpolation...]
-

In the midst of the clamorous debate, I find it challenging to make myself heard before a familiar voice interjects.

SPAWN_AT(university-room-1, haverhill)
CUTSCENE(haverhill, argument-cutscene)

"Now, now! Let's not get ahead of ourselves," bellows Vice-Chancellor Haverhill, his voice carrying authority as he steps forward. I turn to see his portly silhouette making an entrance from behind me. "Well, well, Professor Pendleton! Pray, how in the blazes did you arrive so expeditiously? One might suspect you possess a translocator yet undisclosed to the group!"

Thorne, with her unwavering gaze fixed on me, quips with a wry smile, "Ah, Pendleton, always with your fantastical contraptions. When that automechanical multicarriage takes flight, I'll eat my own hat!"

Sterling, quick to join the jest, chuckles, "And I'll provide the silverware for that feast, Professor Thorne!"

Before Vice-Chancellor Haverhill can join in, he interrupts the joviality with a stern tone. "Gentlemen and ladies, let us not lose sight of our purpose. We have much to discuss regarding the translocator experiment. The time for jests has passed."

The room falls into a more solemn hush, and all eyes turn to the impending discussion, fully aware of the seriousness that underscores their objective.

Despite their relentless jeers, I know they share a collective confidence in the translocator experiment. It's a testament to their unwavering belief in the project, even if the competitive atmosphere at the university has them vying for grants. Amid the laughter and teasing, there's a common thread of hope and determination that binds us in our pursuit of groundbreaking discoveries.
-
-> university_room_1

=== ending_cutscene ===
"My word!" {~Professor Thorne|Dr. Sterling|Professor Standish|Dr. Bradford} exclaimed, her eyes widening, "You stood here a mere moment past, and now you appear on the opposite end of the lecture hall! Most curious and utterly fascinating."

"In the blink of an eye," {~Professor Thorne|Dr. Sterling|Professor Standish|Dr. Bradford} added with shortness of breath.

"I am indebted to each and every one of you," I expressed to the group, "the translocator experiment has been a resounding success. Today, we have demonstrated its remarkable safety and astonishing efficiency. It surpasses even the automechanical multicarriage in every conceivable aspect!"

Upon my words, the room erupted in ecstatic laughter.

CUTSCENE(is-player, ending-cutscene)
-> END
-
