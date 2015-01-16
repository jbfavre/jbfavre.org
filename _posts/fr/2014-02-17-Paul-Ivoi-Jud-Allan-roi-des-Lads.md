---
layout: post
title: Paul d'Ivoi - Jud Allan, roi des Lads
category: bookscanner
tags: [diy, livres]
---

J'ai eu l'occasion de numériser un bel ouvrage, édition de 1932 d'une oeuvre écrite en 1909: "Jud Allan, Roi des Lad's".  
Pour les gens pressés ou ceux que la technique n'amuse pas, la version courte est visible sur le blog du bookscanner.

Prenez:  

* Un doux dingue qui construit une machine "infernale" dans un garage
* Une oeuvre de 1909, dans le domaine public, qui n'est plus éditée
* Un peu de temps et d'astuce
* Beaucoup de logiciel libre et d'envie

Vous obtiendrez deux epub, gratuits naturellement, et je l'espère parfaits !

### 2 mois

Cela aura été la durée, estimée, nécessaire pour reconstituer l'ouvrage après numérisation par le bookscanner.

### 2 séances

Il aura fallu deux séances de numérisation: la première avait mis en évidence un bug dans le logiciel embarqué dans les appareils photos qui corrompait certaines photos, les rendant inexploitables.

### 2 moines copistes

C'est ce travail de reconstitution qui a été le plus long bien entendu.

L'objectif est simple: extraire et reformater le texte en Markdown de manière à faciliter la génération dans différents formats: epub, PDF, html, etc.  
Il s'agit également d'extraire les images d'illustration du livre original, tout en trouvant un compromis entre définition de l'image et poids final du livre en version numérique.

Pour corser la difficulté, nous étions deux moines copistes. Il a fallu se synchroniser.

Heureusement pour nous, et contrairement aux moines copistes, l'informatique et notamment le logiciel libre apporte son lot d'outils permettant cela.

Nous avons donc utilisé:

* Un bête éditeur de texte. Seule excentricité le concernant: la visualisation en temps réel de la conversion Markdown vers HTML
* Git pour le suivi de version et l'intégration des corrections & images
* Gimp pour le travail sur les images
* pandoc pour la génération de l'epub final

Le tout réalisé sur des machines équipées de GNU/Linux, avec une dose de ligne de commande pour "industrialiser" les corrections les plus courantes.

### 2 epub

Le livre original a été séparé en 2, pour conserver une taille de fichier raisonnable, et donc permettre la lecture sur un maximum d'appareils.  
Les epub sont disponibles sur le dépôt GitHub. Vous y trouverez:

* la partie 1 Idylle en modern-sorcellerie
* la partie 2 Lads’s king, le Roi des gamins

Attention, les liens changeront à chaque nouvelle version de l'epub.

### 2 doigts de technique

Les fichiers de reconstitution de l'œuvre sont disponibles dans un dépôt GitHub.

#### Préparation

Le travail de numérisation vous donne une collection de photos prises par deux appareils photos, nommés right et left.  
Vous obtenez donc les pages paires dans le dossier right et les pages impaires dans le dossier left.  
Les photos sont de plus nommées automatiquement par les appareils suivant le format `IMG_<num>.JPG`. Naturellement, `<num>` ne correspond pas au numéro de page.

Il faut donc commencer par réconcilier tout cela. Les pages de couverture sont renommées à la main, elle sont peu nombreuses.  
Il reste les pages paires

    PAGE=2
    for file in IMG_*.JPG;
    do
        mv right/${file} page-${PAGE}.JPG
        PAGE=$((PAGE+2))
    done

et impaires

    PAGE=1
    for file in IMG_*.JPG;
    do
        mv left/${file} page-${PAGE}.JPG
        PAGE=$((PAGE+2))
    done

Une fois toutes les pages rassemblées, il faut également leur appliquer une rotation de 90° vers la droite pour les pages impaires et 90° vers la gauche, ou 270° vers la droite, pour les pages paires.

    for file in page-*.JPG;
    do
        PAGE=${file#page-*}
        PAGE=${PAGE%.JPG}
        MODULO=$((PAGE % 2))
        ROTATE=$((270-MODULO*180))
        convert -rotate ${ROTATE} ${file} ${file%.*}.jpg
        mv ${file%.*}.jpg ${file}
    done

#### Corrections du texte

La partie reconnaissance de caractères ne sera pas détaillée ici (ce n'est pas moi qui l'ai faite), mais mes quelques essais avec Tesseract OCR ont été relativement satisfaisants.  
Benjamin, de son côté, a obtenu de meilleurs résultats avec ScanTailor et Tesseract.  

Néanmoins, on obtient dans tous les cas un fichier texte par page.  
On peut alors commencer les corrections.

Dans mon cas, j'ai choisi le format Markdown. Couplé à pandoc, cela permettra d'avoir un format pivot à partir duquel il sera possible de générer le livre dans différents formats tels que PDF, epub, HTML, texte ou encore LaTeX par exemple.  
Il est également important de se préoccuper de la typographie. Cela améliore grandement le résultat final, mais pose parfois quelques soucis de compatibilité avec les liseuses.  
Au fur et à mesure, on devine que certaines corrections reviennent très souvent, trop pour ne pas être automatisées

    sed -i 's/ﬂ/fl/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ﬁ/fi/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ ?/ ?/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ !/ !/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ ;/ ;/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ :/ :/g' 2-markdown_chapitres/part-*/*.md
    sed -i "s/'/’/g" 2-markdown_chapitres/part-*/*.md
    sed -i 's/‘/’/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/oe/œ/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ae/æ/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/.../…/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/?../?…/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/!../!…/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/« /« /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/ »/ »/g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/Mme /M^me^ /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/Mmes /M^mes^ /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/Mlle /M^lle^ /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/Mlles /M^lles^ /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/M. /M. /g' 2-markdown_chapitres/part-*/*.md
    sed -i 's/A /À /g' 2-markdown_chapitres/part-*/*.md

Attention, n'exécutez ces commandes que sur une page corrigée pour limiter au maximum les effets de bord.

#### Les images

Le livre original étant illustré, il me paraissait naturel d'intégrer les illustrations au livre final.  
Il faut donc dégaîner GIMP pour:

* Extraire l'illustration de l'image d'origine (et non de la version traitée par ScanTailor)
* Convertir les images en "nuances de gris"
* Exporter au format .jpg, qualité 90
* Redimensionner l'image obtenue pour limiter le poids final de l'epub

    SIZE=480
    for file in *.JPG; do
       echo -n Converting ${file}...
       convert -resize ${SIZE}x${SIZE} -quality 60 "$file" "little/${file%.*}.jpg"
       echo done
    done

Enfin, l'on peut générer l'epub lui-même. Je vous laisse étudier le fichier utilities/makefile du dépôt.

#### Personnalisation de l'epub

L'epub n'étant qu'un container zip, il est évidemment possible de la modifier avant de le reconstituer.

    unzip -d Jud_Allan-partie-1 Jud_Allan-partie-1.epub

Dans mon cas, j'ai adapté le formatage des titres de chapitre et la feuille de style, puis reconstitué l'epub.

    cd Jud_Allan
    FILE="../output/Jud_Allan-part-1.epub"
    rm -f "$FILE"
    zip -X0 "$FILE" mimetype
    zip -X9Dr "$FILE" META-INF images *.*

Une fois l'epub reconstitué, vous pouvez le charger sur votre liseuse :)

### 2 mercis

Je ne peux évidemment terminer sans remercier Benjamin Sonntag pour sa "drôle de machine", mais également Agnès pour son aide pour la correction et sa patience dans l'apprentissage de Git !

Voilà, si cela peut servir à d'autres, c'est tant mieux :)
