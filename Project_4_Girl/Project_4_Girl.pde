size(400,400);

noStroke();
translate(100,0);
scale(2);
    //Hair part 1
    fill(#5A4E38);
    rect(48,51,32,31,5);
    //Head
    fill(#D8BC9D);//skin tone
    rect(50, 52, 28, 28,8);
    //body
    fill(#FFA0FE);//pink
    rect(50, 81, 28, 50);

    //Eyes
    fill(255);//white
    rect(54, 56, 6, 6);
    rect(68, 56, 6, 6);
    fill(0);
    rect(54, 56, 3, 3);
    rect(68, 56, 3, 3);
    //mouth
    fill(0);//black
    rect(55, 68, 3, 3);
    rect(58, 71, 12, 3);
    rect(70, 68, 3, 3);

    //right arm
    fill(#FFA0FE);//pink
    rect(77, 81, 10, 10,3);
    rect(41, 81, 10, 10,3);
    fill(#D8BC9D);
    rect(42, 91, 6.5, 32);

    //left arm   
    fill(#D8BC9D);//skin tone
    rect(79.5, 91, 6.5, 32);
    
    //Hair Part 2
    fill(#5A4E38);
    rect(53,51,20,2);
    rect(54,51,2,3);
    rect(52,51,2,4);
    rect(50,51,2,5);
    rect(72,51,2,3);
    rect(74,51,2,4);
    rect(76,51,2,5);
    //hair below head
    rect(48,78,1,15);
    rect(49,79,1,15);
    rect(50,79,1,16);
    rect(51,79,1,17);
    rect(52,79,1,18);
    rect(53,79,1,17);
    rect(54,80,1,15);
    rect(55,80,1,14);
    
    rect(79,78,1,15);
    rect(78,79,1,15);
    rect(77,79,1,16);
    rect(76,79,1,17);
    rect(75,79,1,18);
    rect(74,79,1,17);
    rect(73,80,1,15);
    rect(72,80,1,14);


    //Legs
    fill(#3D5493);//navy blue
    rect(50, 131, 28, 15);
    //rect(50, 146, 10, 45);    
    //rect(68, 146, 10, 45);
    quad(50,146,62,146,58,191,52,191);
    quad(66,146,78,146,74,191,68,191);


    //shoes
    fill(20);//black
    rect(43, 191, 16, 6, 6);
    rect(62, 191, 16, 6, 6);

    //Hands
    fill(#D8BC9D);//skin tone
    rect(40.75,122,9,8);
    rect(78,121.75,9,8);
