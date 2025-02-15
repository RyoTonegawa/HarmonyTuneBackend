DROP TABLE IF EXISTS chord_degree_master;

CREATE TABLE chord_degree_master (
    root VARCHAR(2) NOT NULL,
    chord_name VARCHAR(40) NOT NULL,
    C VARCHAR(20),
    C_sharp VARCHAR(20),
    D VARCHAR(20),
    D_sharp VARCHAR(20), 
    E VARCHAR(20),
    F VARCHAR(20),
    F_sharp VARCHAR(20),
    G VARCHAR(20),
    G_sharp VARCHAR(20),
    A VARCHAR(20),
    A_sharp VARCHAR(20),
    B VARCHAR(20),
    PRIMARY KEY (root, chord_name)
);
-- C Major: ["C", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Major', 'root', NULL, NULL, NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL);

-- C Minor: ["C", "D#", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Minor', 'root', NULL, NULL, 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL);

-- C Major 7th: ["C", "E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Major 7th', 'root', NULL, NULL, NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh');

-- C Minor 7th: ["C", "D#", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Minor 7th', 'root', NULL, NULL, 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- C Dominant 7th: ["C", "E", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Dominant 7th', 'root', NULL, NULL, NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- C Diminished: ["C", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Diminished', 'root', NULL, NULL, 'minor_third', NULL, NULL, 'diminished_fifth', NULL, NULL, NULL, NULL, NULL);

-- C Augmented: ["C", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Augmented', 'root', NULL, NULL, NULL, 'major_third', NULL, NULL, NULL, 'augmented_fifth', NULL, NULL, NULL);

-- C Suspended 2nd: ["C", "D", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Suspended 2nd', 'root', NULL, 'suspended_2nd', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL);

-- C Suspended 4th: ["C", "F", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Suspended 4th', 'root', NULL, NULL, NULL, NULL, 'suspended_4th', NULL, 'perfect_fifth', NULL, NULL, NULL, NULL);

-- C Add 9: ["C", "E", "G", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Add 9', 'root', NULL, 'added_9th', NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL);

-- C Major 9th: ["C", "E", "G", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Major 9th', 'root', NULL, 'ninth', NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh');

-- C Minor 9th: ["C", "D#", "G", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Minor 9th', 'root', NULL, 'ninth', 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- C Major 11th: ["C", "E", "G", "B", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Major 11th', 'root', NULL, 'ninth', NULL, 'major_third', 'eleventh', NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh');

-- C Minor 11th: ["C", "D#", "G", "A#", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Minor 11th', 'root', NULL, 'ninth', 'minor_third', NULL, 'eleventh', NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- C Major 13th: ["C", "E", "G", "B", "D", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Major 13th', 'root', NULL, 'ninth', NULL, 'major_third', 'eleventh', NULL, 'perfect_fifth', NULL, 'thirteenth', NULL, 'major_seventh');

-- C Minor 13th: ["C", "D#", "G", "A#", "D", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Minor 13th', 'root', NULL, 'ninth', 'minor_third', NULL, 'eleventh', NULL, 'perfect_fifth', NULL, 'thirteenth', 'minor_seventh', NULL);

-- C Dominant 9th: ["C", "E", "G", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Dominant 9th', 'root', NULL, 'ninth', NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- C Dominant 11th: ["C", "E", "G", "A#", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('C', 'Dominant 11th', 'root', NULL, 'ninth', NULL, 'major_third', 'eleventh', NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL);

-- ===============================
-- 【ルート：D】
-- D Major: ["D", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A)
VALUES ('D', 'Major', 'root', 'major_third', 'perfect_fifth');

-- D Minor: ["D", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, D, F, A)
VALUES ('D', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- D Major 7th: ["D", "F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C_sharp)
VALUES ('D', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- D Minor 7th: ["D", "F", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, D, F, A, C)
VALUES ('D', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- D Dominant 7th: ["D", "F#", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C)
VALUES ('D', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- D Diminished: ["D", "F", "G#"]
INSERT INTO chord_degree_master (root, chord_name, D, F, G_sharp)
VALUES ('D', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- D Augmented: ["D", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A_sharp)
VALUES ('D', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- D Suspended 2nd: ["D", "E", "A"]
INSERT INTO chord_degree_master (root, chord_name, D, E, A)
VALUES ('D', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- D Suspended 4th: ["D", "G", "A"]
INSERT INTO chord_degree_master (root, chord_name, D, G, A)
VALUES ('D', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- D Add 9: ["D", "F#", "A", "E"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, E)
VALUES ('D', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'ninth');

-- D Major 9th: ["D", "F#", "A", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C_sharp, E)
VALUES ('D', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- D Minor 9th: ["D", "F", "A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, D, F, A, C, E)
VALUES ('D', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- D Major 11th: ["D", "F#", "A", "C#", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C_sharp, E, G)
VALUES ('D', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- D Minor 11th: ["D", "F", "A", "C", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, D, F, A, C, E, G)
VALUES ('D', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- D Major 13th: ["D", "F#", "A", "C#", "E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C_sharp, E, G, B)
VALUES ('D', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- D Minor 13th: ["D", "F", "A", "C", "E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, D, F, A, C, E, G, B)
VALUES ('D', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- D Dominant 9th: ["D", "F#", "A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C, E)
VALUES ('D', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- D Dominant 11th: ["D", "F#", "A", "C", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, D, F_sharp, A, C, E, G)
VALUES ('D', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ===============================
-- 【ルート：E】
-- E Major: ["E", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B)
VALUES ('E', 'Major', 'root', 'major_third', 'perfect_fifth');

-- E Minor: ["E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, E, G, B)
VALUES ('E', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- E Major 7th: ["E", "G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D_sharp)
VALUES ('E', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- E Minor 7th: ["E", "G", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, E, G, B, D)
VALUES ('E', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- E Dominant 7th: ["E", "G#", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D)
VALUES ('E', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- E Diminished: ["E", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, E, G, A_sharp)
VALUES ('E', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- E Augmented: ["E", "G#", "C"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, C)
VALUES ('E', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- E Suspended 2nd: ["E", "F#", "B"]
INSERT INTO chord_degree_master (root, chord_name, E, F_sharp, B)
VALUES ('E', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- E Suspended 4th: ["E", "A", "B"]
INSERT INTO chord_degree_master (root, chord_name, E, A, B)
VALUES ('E', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- E Add 9: ["E", "G#", "B", "F#"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, F_sharp)
VALUES ('E', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'ninth');

-- E Major 9th: ["E", "G#", "B", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D_sharp, F_sharp)
VALUES ('E', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- E Minor 9th: ["E", "G", "B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, E, G, B, D, F_sharp)
VALUES ('E', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- E Major 11th: ["E", "G#", "B", "D#", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D_sharp, F_sharp, A)
VALUES ('E', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- E Minor 11th: ["E", "G", "B", "D", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, E, G, B, D, F_sharp, A)
VALUES ('E', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- E Major 13th: ["E", "G#", "B", "D#", "F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D_sharp, F_sharp, A, C_sharp)
VALUES ('E', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- E Minor 13th: ["E", "G", "B", "D", "F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, E, G, B, D, F_sharp, A, C_sharp)
VALUES ('E', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- E Dominant 9th: ["E", "G#", "B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D, F_sharp)
VALUES ('E', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- E Dominant 11th: ["E", "G#", "B", "D", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, E, G_sharp, B, D, F_sharp, A)
VALUES ('E', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ===============================
-- 【ルート：F】
-- F Major: ["F", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C)
VALUES ('F', 'Major', 'root', 'major_third', 'perfect_fifth');

-- F Minor: ["F", "G#", "C"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, C)
VALUES ('F', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- F Major 7th: ["F", "A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, E)
VALUES ('F', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- F Minor 7th: ["F", "G#", "C", "D#"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, C, D_sharp)
VALUES ('F', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- F Dominant 7th: ["F", "A", "C", "D#"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, D_sharp)
VALUES ('F', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- F Diminished: ["F", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, B)
VALUES ('F', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- F Augmented: ["F", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C_sharp)
VALUES ('F', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- F Suspended 2nd: ["F", "G", "C"]
INSERT INTO chord_degree_master (root, chord_name, F, G, C)
VALUES ('F', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- F Suspended 4th: ["F", "A#", "C"]
INSERT INTO chord_degree_master (root, chord_name, F, A_sharp, C)
VALUES ('F', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- F Add 9: ["F", "A", "C", "G"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, G)
VALUES ('F', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'ninth');

-- F Major 9th: ["F", "A", "C", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, E, G)
VALUES ('F', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- F Minor 9th: ["F", "G#", "C", "D#", "G"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, C, D_sharp, G)
VALUES ('F', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- F Major 11th: ["F", "A", "C", "E", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, E, G, A_sharp)
VALUES ('F', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- F Minor 11th: ["F", "G#", "C", "D#", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, C, D_sharp, G, A_sharp)
VALUES ('F', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- F Major 13th: ["F", "A", "C", "E", "G", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, E, G, A_sharp, D)
VALUES ('F', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- F Minor 13th: ["F", "G#", "C", "D#", "G", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, F, G_sharp, C, D_sharp, G, A_sharp, D)
VALUES ('F', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- F Dominant 9th: ["F", "A", "C", "D#", "G"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, D_sharp, G)
VALUES ('F', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- F Dominant 11th: ["F", "A", "C", "D#", "G", "A#"]
INSERT INTO chord_degree_master (root, chord_name, F, A, C, D_sharp, G, A_sharp)
VALUES ('F', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ===============================
-- 【ルート：G】
-- G Major: ["G", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Major', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, NULL, NULL, 'major_third');

-- G Minor: ["G", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Minor', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, NULL, 'minor_third', NULL);

-- G Major 7th: ["G", "B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Major 7th', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh', 'root', NULL, NULL, NULL, 'major_third');

-- G Minor 7th: ["G", "A#", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Minor 7th', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL, 'root', NULL, NULL, 'minor_third', NULL);

-- G Dominant 7th: ["G", "B", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Dominant 7th', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL, 'root', NULL, NULL, NULL, 'major_third');

-- G Diminished: ["G", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Diminished', 
        NULL, NULL, NULL, 'minor_third', NULL, NULL, NULL, 'root', NULL, NULL, 'diminished_fifth', NULL);

-- G Augmented: ["G", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Augmented', 
        NULL, NULL, 'augmented_fifth', 'major_third', NULL, NULL, NULL, 'root', NULL, NULL, NULL, NULL);

-- G Suspended 2nd: ["G", "A", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Suspended 2nd', 
        NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, 'suspended_2nd', NULL, NULL);

-- G Suspended 4th: ["G", "C", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Suspended 4th', 
        'suspended_4th', NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, NULL, NULL, NULL);

-- G Add 9: ["G", "B", "D", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Add 9', 
        NULL, NULL, 'ninth', NULL, 'major_third', NULL, NULL, 'root', NULL, NULL, NULL, 'perfect_fifth');

-- G Major 9th: ["G", "B", "D", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Major 9th', 
        NULL, NULL, 'ninth', NULL, 'major_third', NULL, 'major_seventh', 'root', NULL, NULL, NULL, 'perfect_fifth');

-- G Minor 9th: ["G", "A#", "D", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Minor 9th', 
        NULL, NULL, 'ninth', NULL, 'minor_third', NULL, 'minor_seventh', 'root', NULL, NULL, NULL, 'perfect_fifth');

-- G Major 11th: ["G", "B", "D", "F#", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Major 11th', 
        'eleventh', NULL, 'ninth', NULL, 'major_third', NULL, 'major_seventh', 'root', NULL, NULL, NULL, 'perfect_fifth');

-- G Minor 11th: ["G", "A#", "D", "F", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Minor 11th', 
        'eleventh', NULL, 'ninth', NULL, 'minor_third', NULL, 'minor_seventh', 'root', NULL, NULL, NULL, 'perfect_fifth');

-- G Major 13th: ["G", "B", "D", "F#", "A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Major 13th', 
        'ninth', NULL, 'ninth', NULL, 'major_third', 'eleventh', NULL, 'root', NULL, 'thirteenth', NULL, 'major_seventh');

-- G Minor 13th: ["G", "A#", "D", "F", "A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Minor 13th', 
        'ninth', NULL, 'ninth', NULL, 'minor_third', 'eleventh', NULL, 'root', NULL, 'thirteenth', 'minor_seventh', 'perfect_fifth');

-- G Dominant 9th: ["G", "B", "D", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Dominant 9th', 
        NULL, NULL, 'ninth', NULL, 'major_third', NULL, NULL, 'root', NULL, NULL, NULL, 'minor_seventh');

-- G Dominant 11th: ["G", "B", "D", "F", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('G', 'Dominant 11th', 
        'eleventh', NULL, 'ninth', NULL, 'major_third', NULL, NULL, 'root', NULL, NULL, NULL, 'minor_seventh');

-- ===============================
-- 【ルート：A】
-- A Major: ["A", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Major', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, NULL);

-- A Minor: ["A", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Minor', 
        NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, 'minor_third');

-- A Major 7th: ["A", "C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Major 7th', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh', 'root', NULL, NULL);

-- A Minor 7th: ["A", "C", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Minor 7th', 
        NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'minor_seventh', 'root', NULL, 'minor_third');

-- A Dominant 7th: ["A", "C#", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Dominant 7th', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'minor_seventh', 'root', NULL, NULL);

-- A Diminished: ["A", "C", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Diminished', 
        NULL, NULL, 'diminished_fifth', 'minor_third', NULL, NULL, NULL, 'root', NULL, NULL, NULL, NULL);

-- A Augmented: ["A", "C#", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Augmented', 
        NULL, 'major_third', NULL, NULL, NULL, NULL, NULL, 'root', NULL, NULL, NULL, 'augmented_fifth');

-- A Suspended 2nd: ["A", "B", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Suspended 2nd', 
        NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', 'suspended_2nd', NULL);

-- A Suspended 4th: ["A", "D", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Suspended 4th', 
        NULL, NULL, 'suspended_4th', NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, NULL);

-- A Add 9: ["A", "C#", "E", "B"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Add 9', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, 'ninth');

-- A Major 9th: ["A", "C#", "E", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Major 9th', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'major_seventh', 'root', NULL, 'ninth');

-- A Minor 9th: ["A", "C", "E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Minor 9th', 
        NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'minor_seventh', 'root', NULL, 'ninth');

-- A Major 11th: ["A", "C#", "E", "G#", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Major 11th', 
        'eleventh', 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, 'major_seventh', NULL, 'root', NULL, 'ninth');

-- A Minor 11th: ["A", "C", "E", "G", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Minor 11th', 
        'eleventh', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL, 'root', NULL, 'ninth');

-- A Major 13th: ["A", "C#", "E", "G#", "B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Major 13th', 
        'ninth', 'major_third', NULL, NULL, 'perfect_fifth', NULL, 'thirteenth', 'major_seventh', NULL, 'root', NULL, 'ninth');

-- A Minor 13th: ["A", "C", "E", "G", "B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Minor 13th', 
        'ninth', NULL, NULL, NULL, 'perfect_fifth', NULL, 'thirteenth', 'minor_seventh', NULL, 'root', NULL, 'ninth');

-- A Dominant 9th: ["A", "C#", "E", "G", "B"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Dominant 9th', 
        NULL, 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, 'minor_seventh');

-- A Dominant 11th: ["A", "C#", "E", "G", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('A', 'Dominant 11th', 
        'eleventh', 'major_third', NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', NULL, 'minor_seventh');

-- ===============================
-- 【ルート：B】
-- B Major: ["B", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Major', 
        NULL, NULL, 'major_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Minor: ["B", "D", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Minor', 
        NULL, NULL, 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Major 7th: ["B", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Major 7th', 
        NULL, NULL, 'major_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root', 'major_seventh');

-- B Minor 7th: ["B", "D", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Minor 7th', 
        NULL, NULL, 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL, 'root');

-- B Dominant 7th: ["B", "D#", "F#", "A"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Dominant 7th', 
        NULL, NULL, 'major_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, 'minor_seventh', NULL, 'root');

-- B Diminished: ["B", "D", "F"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Diminished', 
        NULL, NULL, 'minor_third', NULL, NULL, NULL, 'diminished_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Augmented: ["B", "D#", "G"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Augmented', 
        NULL, NULL, 'major_third', NULL, NULL, NULL, 'augmented_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Suspended 2nd: ["B", "C#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Suspended 2nd', 
        NULL, 'suspended_2nd', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Suspended 4th: ["B", "E", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Suspended 4th', 
        NULL, NULL, NULL, NULL, 'suspended_4th', NULL, 'perfect_fifth', NULL, NULL, NULL, NULL, 'root');

-- B Add 9: ["B", "D#", "F#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Add 9', 
        NULL, 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root');

-- B Major 9th: ["B", "D#", "F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Major 9th', 
        NULL, 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root', 'major_seventh');

-- B Minor 9th: ["B", "D", "F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Minor 9th', 
        NULL, NULL, 'minor_third', NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root');

-- B Major 11th: ["B", "D#", "F#", "A#", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Major 11th', 
        'eleventh', 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root', 'major_seventh');

-- B Minor 11th: ["B", "D", "F#", "A", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Minor 11th', 
        'eleventh', NULL, NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root');

-- B Major 13th: ["B", "D#", "F#", "A#", "C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Major 13th', 
        'ninth', 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, 'thirteenth', NULL, 'ninth', 'root', 'major_seventh');

-- B Minor 13th: ["B", "D", "F#", "A", "C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Minor 13th', 
        'ninth', NULL, NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, 'thirteenth', NULL, 'ninth', 'root');

-- B Dominant 9th: ["B", "D#", "F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Dominant 9th', 
        NULL, 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root');

-- B Dominant 11th: ["B", "D#", "F#", "A", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, C_sharp, D, D_sharp, E, F, F_sharp, G, G_sharp, A, A_sharp, B)
VALUES ('B', 'Dominant 11th', 
        'eleventh', 'major_third', NULL, NULL, NULL, NULL, 'perfect_fifth', NULL, NULL, NULL, 'ninth', 'root', 'minor_seventh');

-- ========= Root: C# =========
-- C# Major: ["C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp)
VALUES ('C#', 'Major', 'root', 'major_third', 'perfect_fifth');

-- C# Minor: ["C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G_sharp)
VALUES ('C#', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- C# Major 7th: ["C#", "E#", "G#", "B#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, C)
VALUES ('C#', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- C# Minor 7th: ["C#", "E", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G_sharp, B)
VALUES ('C#', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- C# Dominant 7th: ["C#", "E#", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, B)
VALUES ('C#', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- C# Diminished: ["C#", "E", "G"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G)
VALUES ('C#', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- C# Augmented: ["C#", "E#", "A"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, A)
VALUES ('C#', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- C# Suspended 2nd: ["C#", "D#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, D_sharp, G_sharp)
VALUES ('C#', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- C# Suspended 4th: ["C#", "F#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F_sharp, G_sharp)
VALUES ('C#', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- C# Add 9: ["C#", "E#", "G#", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, D_sharp)
VALUES ('C#', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'added_9th');

-- C# Major 9th: ["C#", "E#", "G#", "B#", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, C, D_sharp)
VALUES ('C#', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- C# Minor 9th: ["C#", "E", "G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G_sharp, B, D_sharp)
VALUES ('C#', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- C# Major 11th: ["C#", "E#", "G#", "B#", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, C, D_sharp, F_sharp)
VALUES ('C#', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- C# Minor 11th: ["C#", "E", "G#", "B", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G_sharp, B, D_sharp, F_sharp)
VALUES ('C#', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- C# Major 13th: ["C#", "E#", "G#", "B#", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, C, D_sharp, F_sharp, A_sharp)
VALUES ('C#', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- C# Minor 13th: ["C#", "E", "G#", "B", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, E, G_sharp, B, D_sharp, F_sharp, A_sharp)
VALUES ('C#', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- C# Dominant 9th: ["C#", "E#", "G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, B, D_sharp)
VALUES ('C#', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- C# Dominant 11th: ["C#", "E#", "G#", "B", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, F, G_sharp, B, D_sharp, F_sharp)
VALUES ('C#', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ========= Root: D# =========
-- D# Major: ["D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp)
VALUES ('D#', 'Major', 'root', 'major_third', 'perfect_fifth');

-- D# Minor: ["D#", "F", "A#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp)
VALUES ('D#', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- D# Major 7th: ["D#", "F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp)
VALUES ('D#', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- D# Minor 7th: ["D#", "F", "A#", "C"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp, C)
VALUES ('D#', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- D# Dominant 7th: ["D#", "F#", "A#", "C"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C)
VALUES ('D#', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- D# Diminished: ["D#", "F", "A"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A)
VALUES ('D#', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- D# Augmented: ["D#", "F#", "B"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, B)
VALUES ('D#', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- D# Suspended 2nd: ["D#", "E#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp)
VALUES ('D#', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- D# Suspended 4th: ["D#", "G#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, G_sharp, A_sharp)
VALUES ('D#', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- D# Add 9: ["D#", "F#", "A#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, F)
VALUES ('D#', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'added_9th');

-- D# Major 9th: ["D#", "F#", "A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp, F)
VALUES ('D#', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- D# Minor 9th: ["D#", "F", "A#", "C", "E#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp, C, F)
VALUES ('D#', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- D# Major 11th: ["D#", "F#", "A#", "C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp, F, G_sharp)
VALUES ('D#', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- D# Minor 11th: ["D#", "F", "A#", "C", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp, C, F, G_sharp)
VALUES ('D#', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- D# Major 13th: ["D#", "F#", "A#", "C#", "E#", "G#", "B#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp, F, G_sharp, C)
VALUES ('D#', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- D# Minor 13th: ["D#", "F", "A#", "C", "E#", "G#", "B#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F, A_sharp, C, F, G_sharp, C)
VALUES ('D#', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- D# Dominant 9th: ["D#", "F#", "A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp, F)
VALUES ('D#', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- D# Dominant 11th: ["D#", "F#", "A#", "C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, D_sharp, F_sharp, A_sharp, C_sharp, F, G_sharp)
VALUES ('D#', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ========= Root: F# =========
-- F# Major: ["F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp)
VALUES ('F#', 'Major', 'root', 'major_third', 'perfect_fifth');

-- F# Minor: ["F#", "A", "C#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C_sharp)
VALUES ('F#', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- F# Major 7th: ["F#", "A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, F)
VALUES ('F#', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- F# Minor 7th: ["F#", "A", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C_sharp, E)
VALUES ('F#', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- F# Dominant 7th: ["F#", "A#", "C#", "E"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, E)
VALUES ('F#', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- F# Diminished: ["F#", "A", "C"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C)
VALUES ('F#', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- F# Augmented: ["F#", "A#", "D"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, D)
VALUES ('F#', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- F# Suspended 2nd: ["F#", "G#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, G_sharp, C_sharp)
VALUES ('F#', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- F# Suspended 4th: ["F#", "B", "C#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, B, C_sharp)
VALUES ('F#', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- F# Add 9: ["F#", "A#", "C#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, G_sharp)
VALUES ('F#', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'ninth');

-- F# Major 9th: ["F#", "A#", "C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, F, G_sharp)
VALUES ('F#', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- F# Minor 9th: ["F#", "A", "C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C_sharp, E, G_sharp)
VALUES ('F#', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- F# Major 11th: ["F#", "A#", "C#", "E#", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, F, G_sharp, B)
VALUES ('F#', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- F# Minor 11th: ["F#", "A", "C#", "E", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C_sharp, E, G_sharp, B)
VALUES ('F#', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- F# Major 13th: ["F#", "A#", "C#", "E#", "G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, F, G_sharp, B, D_sharp)
VALUES ('F#', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- F# Minor 13th: ["F#", "A", "C#", "E", "G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A, C_sharp, E, G_sharp, B, D_sharp)
VALUES ('F#', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- F# Dominant 9th: ["F#", "A#", "C#", "E", "G#"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, E, G_sharp)
VALUES ('F#', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- F# Dominant 11th: ["F#", "A#", "C#", "E", "G#", "B"]
INSERT INTO chord_degree_master (root, chord_name, F_sharp, A_sharp, C_sharp, E, G_sharp, B)
VALUES ('F#', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- ========= Root: G# =========
-- G# Major: ["G#", "B#", "D#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, G_sharp)
VALUES ('G#', 'Major', 'major_third', 'perfect_fifth', 'root');

-- G# Minor: ["G#", "B", "D#"]
INSERT INTO chord_degree_master (root, chord_name, B, D_sharp, G_sharp)
VALUES ('G#', 'Minor', 'minor_third', 'perfect_fifth', 'root');

-- G# Major 7th: ["G#", "B#", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp)
VALUES ('G#', 'Major 7th', 'major_third', 'perfect_fifth', 'major_seventh', 'root');

-- G# Minor 7th: ["G#", "B", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, B, D_sharp, F_sharp, G_sharp)
VALUES ('G#', 'Minor 7th', 'minor_third', 'perfect_fifth', 'minor_seventh', 'root');

-- G# Dominant 7th: ["G#", "B#", "D#", "F#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp)
VALUES ('G#', 'Dominant 7th', 'major_third', 'perfect_fifth', 'minor_seventh', 'root');

-- G# Diminished: ["G#", "B", "D"]
INSERT INTO chord_degree_master (root, chord_name, B, D, G_sharp)
VALUES ('G#', 'Diminished', 'minor_third', 'diminished_fifth', 'root');

-- G# Augmented: ["G#", "B#", "E"]
INSERT INTO chord_degree_master (root, chord_name, C, E, G_sharp)
VALUES ('G#', 'Augmented', 'major_third', 'augmented_fifth', 'root');

-- G# Suspended 2nd: ["G#", "A#", "D#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, D_sharp, G_sharp)
VALUES ('G#', 'Suspended 2nd', 'suspended_2nd', 'perfect_fifth', 'root');

-- G# Suspended 4th: ["G#", "C#", "D#"]
INSERT INTO chord_degree_master (root, chord_name, C_sharp, D_sharp, G_sharp)
VALUES ('G#', 'Suspended 4th', 'suspended_4th', 'perfect_fifth', 'root');

-- G# Add 9: ["G#", "B#", "D#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, G_sharp, A_sharp)
VALUES ('G#', 'Add 9', 'major_third', 'perfect_fifth', 'root', 'added_9th');

-- G# Major 9th: ["G#", "B#", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp, A_sharp)
VALUES ('G#', 'Major 9th', 'major_third', 'perfect_fifth', 'major_seventh', 'root', 'ninth');

-- G# Minor 9th: ["G#", "B", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, B, D_sharp, F_sharp, G_sharp, A_sharp)
VALUES ('G#', 'Minor 9th', 'minor_third', 'perfect_fifth', 'minor_seventh', 'root', 'ninth');

-- G# Major 11th: ["G#", "B#", "D#", "F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp, A_sharp, C_sharp)
VALUES ('G#', 'Major 11th', 'major_third', 'perfect_fifth', 'major_seventh', 'root', 'ninth', 'eleventh');

-- G# Minor 11th: ["G#", "B", "D#", "F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, B, D_sharp, F_sharp, G_sharp, A_sharp, C_sharp)
VALUES ('G#', 'Minor 11th', 'minor_third', 'perfect_fifth', 'minor_seventh', 'root', 'ninth', 'eleventh');

-- G# Major 13th: ["G#", "B#", "D#", "F#", "A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp, A_sharp, C_sharp, F)
VALUES ('G#', 'Major 13th', 'major_third', 'perfect_fifth', 'major_seventh', 'root', 'ninth', 'eleventh', 'thirteenth');

-- G# Minor 13th: ["G#", "B", "D#", "F#", "A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, B, D_sharp, F_sharp, G_sharp, A_sharp, C_sharp, F)
VALUES ('G#', 'Minor 13th', 'minor_third', 'perfect_fifth', 'minor_seventh', 'root', 'ninth', 'eleventh', 'thirteenth');

-- G# Dominant 9th: ["G#", "B#", "D#", "F#", "A#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp, A_sharp)
VALUES ('G#', 'Dominant 9th', 'major_third', 'perfect_fifth', 'minor_seventh', 'root', 'ninth');

-- G# Dominant 11th: ["G#", "B#", "D#", "F#", "A#", "C#"]
INSERT INTO chord_degree_master (root, chord_name, C, D_sharp, F_sharp, G_sharp, A_sharp, C_sharp)
VALUES ('G#', 'Dominant 11th', 'major_third', 'perfect_fifth', 'minor_seventh', 'root', 'ninth', 'eleventh');

-- ========= Root: A# =========
-- A# Major: ["A#", "C#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F)
VALUES ('A#', 'Major', 'root', 'major_third', 'perfect_fifth');

-- A# Minor: ["A#", "C", "E#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F)
VALUES ('A#', 'Minor', 'root', 'minor_third', 'perfect_fifth');

-- A# Major 7th: ["A#", "C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp)
VALUES ('A#', 'Major 7th', 'root', 'major_third', 'perfect_fifth', 'major_seventh');

-- A# Minor 7th: ["A#", "C", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F, G_sharp)
VALUES ('A#', 'Minor 7th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh');

-- A# Dominant 7th: ["A#", "C#", "E#", "G#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp)
VALUES ('A#', 'Dominant 7th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh');

-- A# Diminished: ["A#", "C", "E"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, E)
VALUES ('A#', 'Diminished', 'root', 'minor_third', 'diminished_fifth');

-- A# Augmented: ["A#", "C#", "F"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F)
VALUES ('A#', 'Augmented', 'root', 'major_third', 'augmented_fifth');

-- A# Suspended 2nd: ["A#", "B#", "E#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F)
VALUES ('A#', 'Suspended 2nd', 'root', 'suspended_2nd', 'perfect_fifth');

-- A# Suspended 4th: ["A#", "D#", "E#"]
INSERT INTO chord_degree_master (root, chord_name, A_sharp, D_sharp, F)
VALUES ('A#', 'Suspended 4th', 'root', 'suspended_4th', 'perfect_fifth');

-- A# Add 9: ["A#", "C#", "E#", "B#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, C)
VALUES ('A#', 'Add 9', 'root', 'major_third', 'perfect_fifth', 'ninth');

-- A# Major 9th: ["A#", "C#", "E#", "G#", "B#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp, C)
VALUES ('A#', 'Major 9th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth');

-- A# Minor 9th: ["A#", "C", "E#", "G#", "B#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F, G_sharp, C)
VALUES ('A#', 'Minor 9th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- A# Major 11th: ["A#", "C#", "E#", "G#", "B#", "D#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp, C, D_sharp)
VALUES ('A#', 'Major 11th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh');

-- A# Minor 11th: ["A#", "C", "E#", "G#", "B#", "D#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F, G_sharp, C, D_sharp)
VALUES ('A#', 'Minor 11th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

-- A# Major 13th: ["A#", "C#", "E#", "G#", "B#", "D#", "F#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp, C, D_sharp, F_sharp)
VALUES ('A#', 'Major 13th', 'root', 'major_third', 'perfect_fifth', 'major_seventh', 'ninth', 'eleventh', 'thirteenth');

-- A# Minor 13th: ["A#", "C", "E#", "G#", "B#", "D#", "F#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C, F, G_sharp, C, D_sharp, F_sharp)
VALUES ('A#', 'Minor 13th', 'root', 'minor_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh', 'thirteenth');

-- A# Dominant 9th: ["A#", "C#", "E#", "G#", "B#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp, C)
VALUES ('A#', 'Dominant 9th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth');

-- A# Dominant 11th: ["A#", "C#", "E#", "G#", "B#", "D#"]
-- → B# を enharmonic に C 列へ登録
INSERT INTO chord_degree_master (root, chord_name, A_sharp, C_sharp, F, G_sharp, C, D_sharp)
VALUES ('A#', 'Dominant 11th', 'root', 'major_third', 'perfect_fifth', 'minor_seventh', 'ninth', 'eleventh');

