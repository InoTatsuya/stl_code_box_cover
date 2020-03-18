topWidth = 110 - 3;
topLength = ( 390 / 2 ) - 3 / 2;
thin = 2;
hokyoHeight = 10;
hokyoMargin = 10;
holeDiameter = 15;

difference() {
    union() {
        difference() {
            union() { // OR
                translate([ 0, 0, 0 ])
                cube([ topWidth, topLength, thin ] );
                translate([ hokyoMargin, hokyoMargin, thin ])
                cube([ topWidth - hokyoMargin * 2, topLength - hokyoMargin * 2, hokyoHeight ] );
            }
            translate([ hokyoMargin + thin, hokyoMargin + thin, thin ])
            cube([ topWidth - ( hokyoMargin + thin ) * 2, ( ( topLength - hokyoMargin * 2 - thin * 2 ) / 2 ) - thin / 2 , hokyoHeight ] );
            translate([ hokyoMargin + thin, hokyoMargin + thin + ( ( topLength - hokyoMargin * 2 - thin * 2 ) / 2 ) + thin / 2, thin ])
            cube([ topWidth - ( hokyoMargin + thin ) * 2, ( ( topLength - hokyoMargin * 2 - thin * 2 ) / 2 ) - thin / 2 , hokyoHeight ] );
        }
        translate([ topWidth / 2, 0, 0 ])
        cylinder(h = thin + hokyoHeight, r = holeDiameter + thin);
        translate([ topWidth / 2, topLength, 0 ])
        cylinder(h = thin + hokyoHeight, r = holeDiameter + thin);
    }
    translate([ topWidth / 2, 0, 0 ])
    cylinder(h = thin + hokyoHeight, r = holeDiameter );
    translate([ topWidth / 2, topLength, 0 ])
    cylinder(h = thin + hokyoHeight, r = holeDiameter );
    translate([ ( topWidth / 2 ) - ( holeDiameter + thin ), - holeDiameter - thin, 0 ])
    cube([ ( holeDiameter + thin ) * 2, holeDiameter + thin, hokyoHeight + thin ]);
    translate([ ( topWidth / 2 ) - ( holeDiameter + thin ), topLength, 0 ])
    cube([ ( holeDiameter + thin ) * 2, holeDiameter + thin, hokyoHeight + thin ]);
}
