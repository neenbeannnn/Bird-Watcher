//
//  YosemiteViewController.swift
//  Bird Watcher
//
//  Created by Nina Huang on 1/26/19.
//  Copyright © 2019 Nina Huang. All rights reserved.
//

import UIKit

class YosemiteViewController: UIViewController {
    
    var birdIndex:Int = 0
    
    @IBOutlet weak var popUpWindow: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    //Arrays for information
    let names:[String] = ["Accipter", "Corvid", "Falcon", "Finch", "Flycatcher", "Nuthatch", "Sparrow", "Thrush", "Vireo", "Warbler", "Woodpecker"]
    
    let species1:[String] = ["Northern Goshawk", "Scrub Jay", "Prairie Falcon", "Cassin's Finch", "Western Wood-Pewee", "Red-breasted Nuthatch", "Dark-eyed Junco", "Hermit Thrush", "Cassin's Vireo", "Yellow-rumped Warbler", "Acorn Woodpecker"]
    
    let species2:[String] = ["Sharp-shinned Hawk", "Steller's Jay", "American Kestrel", "Purple Finch", "Dusky Flycatcher", "White-breasted Nuthatch", "White-crowned Sparrow", "Mountain Bluebird", "Warbling Vireo", "MacGillivray's Warbler", "Downy Woodpecker"]
    
    //1 means 'least concern' and 2 means 'near threatened'
    let endangeredLevels1:[Int] = [1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1]
    let endangeredLevels2:[Int] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    
    let habitat1:[String] = ["Forest, Artificial/Terrestrial, Grassland", "Forest, Shrubland, Artificial/Terrestrial", "Shrubland, Wetlands(inland), Terrestrial, Grassland", "Evergreen forests, Mountains", "Terrestrial, Shrubland, Forest", "Shrubland, Forest, Terrestrial", "Mixed Woodlands, Avoids dense brush", "Forest", "Forest, Terrestrial", "Woodlands, Mountains", "Artificial/Terrestrial, Grassland, Forest"]
    let habitat2:[String] = ["Shrubland, Forest, Terrestrial, Savanna", "Forest, Artificial/Terrestrial", "Terrestrial, Shrubland, Grassland, Forest, Savanna, Wetlands, Desert", "Coniferous forests, Shrublands", "Forest, Shrubland, Terrestrial", "Forest, Artificial/Terrestrial", "Forest, Artificial, Shrubland, Grassland, Wetlands(inland)", "Grassland, Forest, Shrubland, Terrestrial", "Forest, Wetlands(inlands)", "Shrubland, Forest", "Forest, Artificial/Terrestrial"]
    
    let description1:[String] = ["The Northern Goshawk is the largest Accipiter in North America, with the females being larger than the males. They breed in the forested areas of Northern U.S., southern Arizona and New Mexico in forest mountain areas, and in most of Canada. Their normal diet consists of medium to small sized mammals, such as, chipmunks, cottontail rabbits, tree squirrels, and snowshoe hares, and medium to large sized birds, like American Robins, jays, grouse, ptarmigan, and Northern Flickers. They begin their migration from the far North in late Autumn.", "The Scrub Jay has a deep azure blue, clean white underparts, and soft gray-brown. It often gets mixed up with other blue jays, however, it have a brighter and more contrasting bold blue breast band along with its rounded crestless head. This species is found in oak woodlands, suburbs, parks, and along roadsides at low elevations, or flying overhead on rounded fluttering wings.   They have a distinct raspy scolds and weep calls. They eat sunflower seeds and peanuts. And interesting fact is that these Scrub-Jays often are found on the back of a mule deer and eat the deer’s ticks and parasites.", "Prairie Falcons are characterized by their dark triangle of “armpit” feathers and loud courtship calls. However, due to muted cream, grey, and brown blends of color, they are hard to spot as they blend well into steep bluffs and cliffs that they reside in. Their main source of food are ground squirrels and other small mammals and birds. They are among the species of birds that play as they have been seen to drop dried manure for midair to diving to try to catch it.", "Known as the rosy-tinged finch of the mountains of western North America, the Cassin’s Finch is found in the mountain forests of evergreens. They have a peaked head shape and thick, straight-edged bill. The males sings a rollicking song that includes mimicked calls of other birds. They have a fast, rolling songs and their bill helps them eat nuts and sunflower seeds. A fun fact is that the male Cassin’s Finches have a red crown feathers from the carotenoid pigments, which they get when they eat colorful foods like orange berries of firethorn plants.", "The western wood-pewee primarily eats insects, which they are able to catch precisely and quickly. They make a clapping noise with their bills while defending their nest.  When not catching insects, they sing nasally songs while sitting upright.  For the best chance at seeing the Western Wood-Pewee, look for bare branches where this bird usually sits.  During the wintertime, this species migrates to South America, but it is uncertain which exact region they tend to reside in.", "The red-breasted nuthatch are small birds that are extremely active.  They find their food within bark furrows and can be commonly found sideways along tree trunks and along branches.  They are also common visitors to nesting bird houses.  Around their nests, they place resin globs from trees in order to keep out harmful predators.  It avoids getting stuck in the resin by diving extremely fast through the nesting hole.  They are aggressive birds that steal nest materials and protect their nesting site from intruders.", "Dark-eyed Juncos are easily recognizable by their crips markings and the bright white tail feathers that sometimes flash in flight. They are one of the most abundant forest birds of North America. They are found in open, but partially wooded areas with understory for cover. You can hear their twittering call and their trilling song. An interesting fact is the Juncos are the “snowbirds” of the middle latitudes since they appear in most of the eastern US. when winter sets in.", "The Hermit Thrush is known for its lovely, melancholy song. They are found in the far northern forests in summer and are found in many places of America in the winter. They find much of their food by rummaging through leaf litter or by picking insects with its bills. They are characterized by their rich brown upper body and smudged spots on their breast, with a reddish tail. An interesting fact about this type of bird is that the males usually gather food for the nest, while the females feed the nestlings.", "This bird is part of the Solitary Vireo complex, along with the Plumbeous and Blue-headed vireos.  In terms of appearance and singing, it is intermediate to the other two.  There are 2 subspecies of the Cassin’s Vireo, in western North America and in southern Baja California.  It is an extremely territorial bird that will protect its nest and is wary of predators.", "The yellow-rumped warbler is a bird that travels in packs and is most known for their spring migration where they molt from brown to a bright yellow.  They can be found on the outer branches of trees and fly out artistically to capture insects.  They don’t stay contained to tree branches as they also have been seen to forage around seaweed at beaches. They are the only warbler that is able to digest waxes found on bayberries and wax myrtles, which allows it to travel much farther north.", "With a rep cap,creamy white face and black patch around its bill, the Acorn woodpecker are medium-sized woodpeckers with straight, spike-like bills and stiff, wedge-shaped tails are found in oak-evergreen forests on slopes and mountains in the West Coast and Southwest. They are one of the birds that are tolerant of humans and thus can be found in towns. This species of a woodpecker store thousands of acorns each year by forcefully jamming them into self made holes in trees. They work together in large groups and leave one bird always guarding the acorns while the other group members race through trees making waka-waka calls."]
    
    let description2:[String] = ["The Sharp-shinned Hawk is the smallest Accipiter that breeds in winters and breeds in North America, with the females being larger than the males. They are often mistaken as Cooper’s Hawk, however, their lack of contrast between the back of the head and back, along with a more square tail differentiates them from other species. Their diet consists of small to medium birds since they have evolved to have long toes with long spicules that assists them in holding onto the feathers of their prey.", "Steller’s Jays are commonly found in forest wildernesses along with campgrounds, parklands, and backyards. They are often found in high canopies, and you can hear their scolding, harsh calls. This type of bird has a graceful yet and almost lazy like behavior in flight as they fly in long swoops on their broad, rounded wings. A fun fact about them is that they are one of the only jays that use mud to build their nests.", "Though the American Kestrel is North America’s littlest falcon, it still lives up to the falcon’s known fierce intensity. This species is known for its colorfulness as the males’ have a slate-blue head and wings that contrast their rusty-red back and tail while the females’ have the similar warm reddish coloration on their wings, back, and tail. Their main diet consists of insects and other small prey that reside in open areas. They perch on wires or poles or hover facing into the wind to hunt for their prey. These birds are commonly found in places that have fence posts, utility line, telephone poles, and farmlands. A fun fact about this species is that the different gender birds have different preferences of habitat as the females use open habitat while males use areas with more trees. This causes the females to migrate to the south earlier than the males.", "The Purple Finch was described by Roger Tory Peterson as a “sparrow dipped in raspberry juice.” This species has a big beak and tongue to crush seeds and extract the nuts from their shells. They also use that to get nectar without the entire flower. The Purple Finch is a predator of flowers as they eat the seeds of the flowers instead of distributing the seeds. This bird migrates often so thus they do not have a set migration path each year. Along with that they have a warbling song that one can hear from the forests.", "The Dusky Flycatcher is often mistaken with the Hammond’s flycatcher, since both have similar qualities.  The only difference is the length of the outer wing feathers; Dusky flycatchers have a shorter wings than the Hammond.  Look for this bird perched atop dead branches or lower foliage eating insects.", "The white-breasted nuthatch is a territorial and aggressive bird that is commonly found atop larger coniferous branches.  They are known for jamming a seed or nut in tree bark and hitting it repeatedly with their bills to open the seed.  Even though they are aggressive birds, they are extremely cautious when exploring new areas and prefer to join large flocks of chickadees.  In preparation for wintertime, they gather large amounts of seeds and nuts in the nearby tree bark.", "The White-crowned Sparrow has a smart black-and-white head, pale beak, and a crisp gray breast. They are often in flocks of sparrows that scurry through brushy borders and overgrown fields. One can hear this bird from its thin, sweet whistle. This bird is found in much of the U.S during the winter. An fun fact about this bird is that it can migrate 300 miles in a single night and travel about 2,600 miles in the winter.", "The Mountain Bluebird is sky-blue with darker blue on the wings while being white under the tail. The females are mostly gray-brown with hints of pale blue on their wings and tails. Unlike most birds, this bluebird hovers while hunting and pounce on their insect prey from an elevated perch. This species is found in the West’s wide-open spaces, particularly at middle and higher elevations. A cool fact about this type of bird is that female Mountain Bluebirds pay more attention to good nest sites than to attractive males. Often they will pick a mate based solely on their location and the quality of nesting cavity that he provides.", "Warbling Vireo’s are slower birds that are named for their singing that can only be described as warbling.  Their songs usually end on a high note.  There are 6 separate subspecies of Warbling Vireo’s, all with subtly different appearances.  The brown-headed cowbird often places its eggs in the nests of warbling vireos, where their eggs are cared for.  In some instances, the birds will puncture and throw away the eggs.  This bird can be found high in the treetops as well as in cottonwood woodland near streams.", "This bird is similar to the Mourning Warbler, but they differ in their breeding ranges.  They nest in a large variety of areas, ranging from sea level up to 3,000 meters.  They are commonly found to be feeding near the ground, searching for insects in the foliage.  The diet of the MacGillivray's warbler consists of insects as well as beetles, and caterpillars.", "The Downy Woodpecker is characterized by their black and white coloration. They are found in woodlots and are known for their high-pitched pik note and then descending whinny call. This species of woodpecker is mostly likely the woodpecker species that visit backyard bird feeders. A fun fact about this species is that often migrate with members of other species of birds. This way they spend less energy and time looking out for predators and a better chance of finding food."]
    
    //SubImages
    
//    let imageNames1:[String] = ["northerngoshawk.jpg", "scrubjay.jpg", "prairiefalcon.jpg", "cassinsfinch.jpg", "westernwoodpewee.jpg", "redbreastednuthatch.jpg", "darkeyedjunco.jpg", "hermitthrush.jpg", "cassinsvireo.jpg", "yellowrumpedwarbler.jpg", "acornwoodpecker.jpg"]
    
//    let imageNames2:[String] = ["sharpshinnedhawk.jpg", "stellersjay.jpg", "americankestrel.jpg", "purplefinch.jpg", "duskyflycatcher.jpg", "whitebreastednithatch.jpg", "whitecrownedsparrow.jpg", "mountainbluebird.jpg", "warblingvireo.jpg", "macgillivrayswarbler.jpg", "downywoodpecker.jpg"]
    
    var images1:[UIImage] = [UIImage(named: "northerngoshawk")!, UIImage(named: "scrubjay")!, UIImage(named: "prairiefalcon")!, UIImage(named: "cassinsfinch")!, UIImage(named: "westernwoodpewee")!, UIImage(named: "redbreastednuthatch")!, UIImage(named: "darkeyedjunco")!, UIImage(named: "hermitthrush")!, UIImage(named: "cassinsvireo")!, UIImage(named: "yellowrumpedwarbler")!, UIImage(named: "acornwoodpecker")!]
    
    var images2:[UIImage] = [UIImage(named: "sharpshinnedhawk")!, UIImage(named: "stellersjay")!, UIImage(named: "americankestrel")!, UIImage(named: "purplefinch")!, UIImage(named: "duskyflycatcher")!, UIImage(named: "whitebreastednuthatch")!, UIImage(named: "whitecrownedsparrow")!, UIImage(named: "mountainbluebird")!, UIImage(named: "warblingvireo")!, UIImage(named: "macgillivraywarbler")!, UIImage(named: "downywoodpecker")!]
    
    
    
    //Elements in pop-up window
    @IBOutlet weak var nameText: UITextView!
    @IBOutlet weak var speciesText: UITextView!
    @IBOutlet weak var endangeredLevelText: UITextView!
    @IBOutlet weak var naturalHabitatText: UITextView!
    @IBOutlet var imageOne: UIImageView!
    @IBOutlet weak var paragraphText: UITextView!
    
    //images
    @IBOutlet weak var accipterImage: UIButton!
    @IBOutlet weak var corvidImage: UIButton!
    @IBOutlet weak var falconImage: UIButton!
    @IBOutlet weak var finchImage: UIButton!
    @IBOutlet weak var flycatcherImage: UIButton!
    @IBOutlet weak var nuthatchImage: UIButton!
    @IBOutlet weak var sparrowImage: UIButton!
    @IBOutlet weak var thrushImage: UIButton!
    @IBOutlet weak var vireoImage: UIButton!
    @IBOutlet weak var warblerImage: UIButton!
    @IBOutlet weak var woodpeckerImage: UIButton!
    
    
    @IBAction func exitPopUpButton(_ sender: Any) {
        enableButtons()
        popUpWindow.isHidden = true
    }
    
    @IBAction func backButtonTap(_ sender: UIButton) {
        performSegue(withIdentifier: "yosemiteToHomeSegue", sender: self)
    }
    
    @IBOutlet weak var prevSpeciesButton: UIButton!
    @IBOutlet weak var nextSpeciesButton: UIButton!
    
    
    @IBAction func prevSpeciesTap(_ sender: UIButton) {
        prevSpeciesButton.isEnabled = false
        nextSpeciesButton.isEnabled = true
        setFirstPageLabels(num: birdIndex)
    }
    
    @IBAction func nextSpeciesTap(_ sender: UIButton) {
        nextSpeciesButton.isEnabled = false
        prevSpeciesButton.isEnabled = true
        setSecondPageLabels(num: birdIndex)
    }
    
    
    @IBAction func accipterTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Accipter"
        birdIndex = 0
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func corvidTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Corvid"
        birdIndex = 1
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func falconTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Falcon"
        birdIndex = 2
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func finchTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Finch"
        birdIndex = 3
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func flycatcherTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Flycatcher"
        birdIndex = 4
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func nuthatchTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Nuthatch"
        birdIndex = 5
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func sparrowTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Sparrow"
        birdIndex = 6
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func thrushTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Thrush"
        birdIndex = 7
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func vireoTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Vireo"
        birdIndex = 8
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func warblerTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Warbler"
        birdIndex = 9
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    @IBAction func woodpeckerTap(_ sender: UIButton) {
        setButtons()
        nameText.text = "Woodpecker"
        birdIndex = 10
        setFirstPageLabels(num: birdIndex)
        popUpWindow.frame.origin.y = scrollView.contentOffset.y
        popUpWindow.isHidden = false
    }
    
    func setButtons(){
        prevSpeciesButton.isEnabled = false
        nextSpeciesButton.isEnabled = true
    }
    
    //TODO add function that takes in a string and disables all the other buttons
    
    func setFirstPageLabels(num:Int){
        disableButtons()
        speciesText.text = species1[num]
        let endangeredNum:Int = endangeredLevels1[num]
        if(endangeredNum == 1){
            endangeredLevelText.text = "Status: Least concern"
        }
        else{
            endangeredLevelText.text = "Status: Near threatened"
        }
//        imageOne = UIImageView(image: images1[num], highlightedImage: images1[num])
        naturalHabitatText.text = habitat1[num]
        paragraphText.text = description1[num]
    }
    
    func setSecondPageLabels(num:Int){
        speciesText.text = species2[num]
        let endangeredNum:Int = endangeredLevels2[num]
        if(endangeredNum == 1){
            endangeredLevelText.text = "Status: Least concern"
        }
        else{
            endangeredLevelText.text = "Status: Near threatened"
        }
//        imageOne = UIImageView(image: images2[num], highlightedImage: images2[num])
        naturalHabitatText.text = habitat2[num]
        paragraphText.text = description2[num]
    }
//
//    func setImageToButton(){
//        let imageName = images1[birdIndex]
//        imageOne = UIImageView(image: imageName)
//    }
    
    func disableButtons(){
        accipterImage.isEnabled = false
        corvidImage.isEnabled = false
        falconImage.isEnabled = false
        finchImage.isEnabled = false
        flycatcherImage.isEnabled = false
        nuthatchImage.isEnabled = false
        sparrowImage.isEnabled = false
        thrushImage.isEnabled = false
        vireoImage.isEnabled = false
        warblerImage.isEnabled = false
        woodpeckerImage.isEnabled = false
    }
    
    func enableButtons(){
        accipterImage.isEnabled = true
        corvidImage.isEnabled = true
        falconImage.isEnabled = true
        finchImage.isEnabled = true
        flycatcherImage.isEnabled = true
        nuthatchImage.isEnabled = true
        sparrowImage.isEnabled = true
        thrushImage.isEnabled = true
        vireoImage.isEnabled = true
        warblerImage.isEnabled = true
        woodpeckerImage.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setImageToButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

