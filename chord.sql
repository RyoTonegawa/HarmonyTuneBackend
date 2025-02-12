drop table chord_master;

CREATE TABLE chord_master (
    root VARCHAR(3) NOT NULL,
    chord_name VARCHAR(20) NOT NULL,
    tones JSONB NOT NULL,
    latest_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    PRIMARY KEY (root, chord_name),
    FOREIGN KEY (chord_name) REFERENCES chord_notation_master(chord_name) ON DELETE CASCADE
);

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Major', '["C", "E", "G"]'),
('C', 'Minor', '["C", "D#", "G"]'),
('C', 'Major 7th', '["C", "E", "G", "B"]'),
('C', 'Minor 7th', '["C", "D#", "G", "A#"]'),
('C', 'Dominant 7th', '["C", "E", "G", "A#"]'),
('C', 'Diminished', '["C", "D#", "F#"]'),
('C', 'Augmented', '["C", "E", "G#"]'),
('C', 'Suspended 2nd', '["C", "D", "G"]'),
('C', 'Suspended 4th', '["C", "F", "G"]'),
('C', 'Add 9', '["C", "E", "G", "D"]'),
('C', 'Major 9th', '["C", "E", "G", "B", "D"]'),
('C', 'Minor 9th', '["C", "D#", "G", "A#", "D"]'),
('C', 'Major 11th', '["C", "E", "G", "B", "D", "F"]'),
('C', 'Minor 11th', '["C", "D#", "G", "A#", "D", "F"]'),
('C', 'Major 13th', '["C", "E", "G", "B", "D", "F", "A"]'),
('C', 'Minor 13th', '["C", "D#", "G", "A#", "D", "F", "A"]');

-- D のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('D', 'Major', '["D", "F#", "A"]'),
('D', 'Minor', '["D", "F", "A"]'),
('D', 'Major 7th', '["D", "F#", "A", "C#"]'),
('D', 'Minor 7th', '["D", "F", "A", "C"]'),
('D', 'Dominant 7th', '["D", "F#", "A", "C"]'),
('D', 'Diminished', '["D", "F", "G#"]'),
('D', 'Augmented', '["D", "F#", "A#"]'),
('D', 'Suspended 2nd', '["D", "E", "A"]'),
('D', 'Suspended 4th', '["D", "G", "A"]'),
('D', 'Add 9', '["D", "F#", "A", "E"]'),
('D', 'Major 9th', '["D", "F#", "A", "C#", "E"]'),
('D', 'Minor 9th', '["D", "F", "A", "C", "E"]'),
('D', 'Major 11th', '["D", "F#", "A", "C#", "E", "G"]'),
('D', 'Minor 11th', '["D", "F", "A", "C", "E", "G"]'),
('D', 'Major 13th', '["D", "F#", "A", "C#", "E", "G", "B"]'),
('D', 'Minor 13th', '["D", "F", "A", "C", "E", "G", "B"]');
-- E のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('E', 'Major', '["E", "G#", "B"]'),
('E', 'Minor', '["E", "G", "B"]'),
('E', 'Major 7th', '["E", "G#", "B", "D#"]'),
('E', 'Minor 7th', '["E", "G", "B", "D"]'),
('E', 'Dominant 7th', '["E", "G#", "B", "D"]'),
('E', 'Diminished', '["E", "G", "A#"]'),
('E', 'Augmented', '["E", "G#", "C"]'),
('E', 'Suspended 2nd', '["E", "F#", "B"]'),
('E', 'Suspended 4th', '["E", "A", "B"]'),
('E', 'Add 9', '["E", "G#", "B", "F#"]'),
('E', 'Major 9th', '["E", "G#", "B", "D#", "F#"]'),
('E', 'Minor 9th', '["E", "G", "B", "D", "F#"]'),
('E', 'Major 11th', '["E", "G#", "B", "D#", "F#", "A"]'),
('E', 'Minor 11th', '["E", "G", "B", "D", "F#", "A"]'),
('E', 'Major 13th', '["E", "G#", "B", "D#", "F#", "A", "C#"]'),
('E', 'Minor 13th', '["E", "G", "B", "D", "F#", "A", "C#"]');

-- F のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('F', 'Major', '["F", "A", "C"]'),
('F', 'Minor', '["F", "G#", "C"]'),
('F', 'Major 7th', '["F", "A", "C", "E"]'),
('F', 'Minor 7th', '["F", "G#", "C", "D#"]'),
('F', 'Dominant 7th', '["F", "A", "C", "D#"]'),
('F', 'Diminished', '["F", "G#", "B"]'),
('F', 'Augmented', '["F", "A", "C#"]'),
('F', 'Suspended 2nd', '["F", "G", "C"]'),
('F', 'Suspended 4th', '["F", "A#", "C"]'),
('F', 'Add 9', '["F", "A", "C", "G"]'),
('F', 'Major 9th', '["F", "A", "C", "E", "G"]'),
('F', 'Minor 9th', '["F", "G#", "C", "D#", "G"]'),
('F', 'Major 11th', '["F", "A", "C", "E", "G", "A#"]'),
('F', 'Minor 11th', '["F", "G#", "C", "D#", "G", "A#"]'),
('F', 'Major 13th', '["F", "A", "C", "E", "G", "A#", "D"]'),
('F', 'Minor 13th', '["F", "G#", "C", "D#", "G", "A#", "D"]');

-- G のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('G', 'Major', '["G", "B", "D"]'),
('G', 'Minor', '["G", "A#", "D"]'),
('G', 'Major 7th', '["G", "B", "D", "F#"]'),
('G', 'Minor 7th', '["G", "A#", "D", "F"]'),
('G', 'Dominant 7th', '["G", "B", "D", "F"]'),
('G', 'Diminished', '["G", "A#", "C#"]'),
('G', 'Augmented', '["G", "B", "D#"]'),
('G', 'Suspended 2nd', '["G", "A", "D"]'),
('G', 'Suspended 4th', '["G", "C", "D"]'),
('G', 'Add 9', '["G", "B", "D", "A"]'),
('G', 'Major 9th', '["G", "B", "D", "F#", "A"]'),
('G', 'Minor 9th', '["G", "A#", "D", "F", "A"]'),
('G', 'Major 11th', '["G", "B", "D", "F#", "A", "C"]'),
('G', 'Minor 11th', '["G", "A#", "D", "F", "A", "C"]'),
('G', 'Major 13th', '["G", "B", "D", "F#", "A", "C", "E"]'),
('G', 'Minor 13th', '["G", "A#", "D", "F", "A", "C", "E"]');

-- A のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('A', 'Major', '["A", "C#", "E"]'),
('A', 'Minor', '["A", "C", "E"]'),
('A', 'Major 7th', '["A", "C#", "E", "G#"]'),
('A', 'Minor 7th', '["A", "C", "E", "G"]'),
('A', 'Dominant 7th', '["A", "C#", "E", "G"]'),
('A', 'Diminished', '["A", "C", "D#"]'),
('A', 'Augmented', '["A", "C#", "F"]'),
('A', 'Suspended 2nd', '["A", "B", "E"]'),
('A', 'Suspended 4th', '["A", "D", "E"]'),
('A', 'Add 9', '["A", "C#", "E", "B"]'),
('A', 'Major 9th', '["A", "C#", "E", "G#", "B"]'),
('A', 'Minor 9th', '["A", "C", "E", "G", "B"]'),
('A', 'Major 11th', '["A", "C#", "E", "G#", "B", "D"]'),
('A', 'Minor 11th', '["A", "C", "E", "G", "B", "D"]'),
('A', 'Major 13th', '["A", "C#", "E", "G#", "B", "D", "F#"]'),
('A', 'Minor 13th', '["A", "C", "E", "G", "B", "D", "F#"]');

-- B のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('B', 'Major', '["B", "D#", "F#"]'),
('B', 'Minor', '["B", "D", "F#"]'),
('B', 'Major 7th', '["B", "D#", "F#", "A#"]'),
('B', 'Minor 7th', '["B", "D", "F#", "A"]'),
('B', 'Dominant 7th', '["B", "D#", "F#", "A"]'),
('B', 'Diminished', '["B", "D", "F"]'),
('B', 'Augmented', '["B", "D#", "G"]'),
('B', 'Suspended 2nd', '["B", "C#", "F#"]'),
('B', 'Suspended 4th', '["B", "E", "F#"]'),
('B', 'Add 9', '["B", "D#", "F#", "C#"]'),
('B', 'Major 9th', '["B", "D#", "F#", "A#", "C#"]'),
('B', 'Minor 9th', '["B", "D", "F#", "A", "C#"]'),
('B', 'Major 11th', '["B", "D#", "F#", "A#", "C#", "E"]'),
('B', 'Minor 11th', '["B", "D", "F#", "A", "C#", "E"]'),
('B', 'Major 13th', '["B", "D#", "F#", "A#", "C#", "E", "G#"]'),
('B', 'Minor 13th', '["B", "D", "F#", "A", "C#", "E", "G#"]');


-- C# のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C#', 'Major', '["C#", "E#", "G#"]'),
('C#', 'Minor', '["C#", "E", "G#"]'),
('C#', 'Major 7th', '["C#", "E#", "G#", "B#"]'),
('C#', 'Minor 7th', '["C#", "E", "G#", "B"]'),
('C#', 'Dominant 7th', '["C#", "E#", "G#", "B"]'),
('C#', 'Diminished', '["C#", "E", "G"]'),
('C#', 'Augmented', '["C#", "E#", "A"]'),
('C#', 'Suspended 2nd', '["C#", "D#", "G#"]'),
('C#', 'Suspended 4th', '["C#", "F#", "G#"]'),
('C#', 'Add 9', '["C#", "E#", "G#", "D#"]'),
('C#', 'Major 9th', '["C#", "E#", "G#", "B#", "D#"]'),
('C#', 'Minor 9th', '["C#", "E", "G#", "B", "D#"]'),
('C#', 'Major 11th', '["C#", "E#", "G#", "B#", "D#", "F#"]'),
('C#', 'Minor 11th', '["C#", "E", "G#", "B", "D#", "F#"]'),
('C#', 'Major 13th', '["C#", "E#", "G#", "B#", "D#", "F#", "A#"]'),
('C#', 'Minor 13th', '["C#", "E", "G#", "B", "D#", "F#", "A#"]');

-- D# のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('D#', 'Major', '["D#", "F#", "A#"]'),
('D#', 'Minor', '["D#", "F", "A#"]'),
('D#', 'Major 7th', '["D#", "F#", "A#", "C#"]'),
('D#', 'Minor 7th', '["D#", "F", "A#", "C"]'),
('D#', 'Dominant 7th', '["D#", "F#", "A#", "C"]'),
('D#', 'Diminished', '["D#", "F", "A"]'),
('D#', 'Augmented', '["D#", "F#", "B"]'),
('D#', 'Suspended 2nd', '["D#", "E#", "A#"]'),
('D#', 'Suspended 4th', '["D#", "G#", "A#"]'),
('D#', 'Add 9', '["D#", "F#", "A#", "E#"]'),
('D#', 'Major 9th', '["D#", "F#", "A#", "C#", "E#"]'),
('D#', 'Minor 9th', '["D#", "F", "A#", "C", "E#"]'),
('D#', 'Major 11th', '["D#", "F#", "A#", "C#", "E#", "G#"]'),
('D#', 'Minor 11th', '["D#", "F", "A#", "C", "E#", "G#"]'),
('D#', 'Major 13th', '["D#", "F#", "A#", "C#", "E#", "G#", "B#"]'),
('D#', 'Minor 13th', '["D#", "F", "A#", "C", "E#", "G#", "B#"]');

-- F# のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('F#', 'Major', '["F#", "A#", "C#"]'),
('F#', 'Minor', '["F#", "A", "C#"]'),
('F#', 'Major 7th', '["F#", "A#", "C#", "E#"]'),
('F#', 'Minor 7th', '["F#", "A", "C#", "E"]'),
('F#', 'Dominant 7th', '["F#", "A#", "C#", "E"]'),
('F#', 'Diminished', '["F#", "A", "C"]'),
('F#', 'Augmented', '["F#", "A#", "D"]'),
('F#', 'Suspended 2nd', '["F#", "G#", "C#"]'),
('F#', 'Suspended 4th', '["F#", "B", "C#"]'),
('F#', 'Add 9', '["F#", "A#", "C#", "G#"]'),
('F#', 'Major 9th', '["F#", "A#", "C#", "E#", "G#"]'),
('F#', 'Minor 9th', '["F#", "A", "C#", "E", "G#"]'),
('F#', 'Major 11th', '["F#", "A#", "C#", "E#", "G#", "B"]'),
('F#', 'Minor 11th', '["F#", "A", "C#", "E", "G#", "B"]'),
('F#', 'Major 13th', '["F#", "A#", "C#", "E#", "G#", "B", "D#"]'),
('F#', 'Minor 13th', '["F#", "A", "C#", "E", "G#", "B", "D#"]');

-- G# のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('G#', 'Major', '["G#", "B#", "D#"]'),
('G#', 'Minor', '["G#", "B", "D#"]'),
('G#', 'Major 7th', '["G#", "B#", "D#", "F#"]'),
('G#', 'Minor 7th', '["G#", "B", "D#", "F#"]'),
('G#', 'Dominant 7th', '["G#", "B#", "D#", "F#"]'),
('G#', 'Diminished', '["G#", "B", "D"]'),
('G#', 'Augmented', '["G#", "B#", "E"]'),
('G#', 'Suspended 2nd', '["G#", "A#", "D#"]'),
('G#', 'Suspended 4th', '["G#", "C#", "D#"]'),
('G#', 'Add 9', '["G#", "B#", "D#", "A#"]'),
('G#', 'Major 9th', '["G#", "B#", "D#", "F#", "A#"]'),
('G#', 'Minor 9th', '["G#", "B", "D#", "F#", "A#"]'),
('G#', 'Major 11th', '["G#", "B#", "D#", "F#", "A#", "C#"]'),
('G#', 'Minor 11th', '["G#", "B", "D#", "F#", "A#", "C#"]'),
('G#', 'Major 13th', '["G#", "B#", "D#", "F#", "A#", "C#", "E#"]'),
('G#', 'Minor 13th', '["G#", "B", "D#", "F#", "A#", "C#", "E#"]');

-- A# のコード
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('A#', 'Major', '["A#", "C#", "E#"]'),
('A#', 'Minor', '["A#", "C", "E#"]'),
('A#', 'Major 7th', '["A#", "C#", "E#", "G#"]'),
('A#', 'Minor 7th', '["A#", "C", "E#", "G#"]'),
('A#', 'Dominant 7th', '["A#", "C#", "E#", "G#"]'),
('A#', 'Diminished', '["A#", "C", "E"]'),
('A#', 'Augmented', '["A#", "C#", "F"]'),
('A#', 'Suspended 2nd', '["A#", "B#", "E#"]'),
('A#', 'Suspended 4th', '["A#", "D#", "E#"]'),
('A#', 'Add 9', '["A#", "C#", "E#", "B#"]'),
('A#', 'Major 9th', '["A#", "C#", "E#", "G#", "B#"]'),
('A#', 'Minor 9th', '["A#", "C", "E#", "G#", "B#"]'),
('A#', 'Major 11th', '["A#", "C#", "E#", "G#", "B#", "D#"]'),
('A#', 'Minor 11th', '["A#", "C", "E#", "G#", "B#", "D#"]'),
('A#', 'Major 13th', '["A#", "C#", "E#", "G#", "B#", "D#", "F#"]'),
('A#', 'Minor 13th', '["A#", "C", "E#", "G#", "B#", "D#", "F#"]');


-- Dominant 9th の追加
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Dominant 9th', '["C", "E", "G", "A#", "D"]'),
('D', 'Dominant 9th', '["D", "F#", "A", "C", "E"]'),
('E', 'Dominant 9th', '["E", "G#", "B", "D", "F#"]'),
('F', 'Dominant 9th', '["F", "A", "C", "D#", "G"]'),
('G', 'Dominant 9th', '["G", "B", "D", "F", "A"]'),
('A', 'Dominant 9th', '["A", "C#", "E", "G", "B"]'),
('B', 'Dominant 9th', '["B", "D#", "F#", "A", "C#"]'),
('C#', 'Dominant 9th', '["C#", "E#", "G#", "B", "D#"]'),
('D#', 'Dominant 9th', '["D#", "F#", "A#", "C#", "E#"]'),
('F#', 'Dominant 9th', '["F#", "A#", "C#", "E", "G#"]'),
('G#', 'Dominant 9th', '["G#", "B#", "D#", "F#", "A#"]'),
('A#', 'Dominant 9th', '["A#", "C#", "E#", "G#", "B#"]');

-- Dominant 11th の追加
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Dominant 11th', '["C", "E", "G", "A#", "D", "F"]'),
('D', 'Dominant 11th', '["D", "F#", "A", "C", "E", "G"]'),
('E', 'Dominant 11th', '["E", "G#", "B", "D", "F#", "A"]'),
('F', 'Dominant 11th', '["F", "A", "C", "D#", "G", "A#"]'),
('G', 'Dominant 11th', '["G", "B", "D", "F", "A", "C"]'),
('A', 'Dominant 11th', '["A", "C#", "E", "G", "B", "D"]'),
('B', 'Dominant 11th', '["B", "D#", "F#", "A", "C#", "E"]'),
('C#', 'Dominant 11th', '["C#", "E#", "G#", "B", "D#", "F#"]'),
('D#', 'Dominant 11th', '["D#", "F#", "A#", "C#", "E#", "G#"]'),
('F#', 'Dominant 11th', '["F#", "A#", "C#", "E", "G#", "B"]'),
('G#', 'Dominant 11th', '["G#", "B#", "D#", "F#", "A#", "C#"]'),
('A#', 'Dominant 11th', '["A#", "C#", "E#", "G#", "B#", "D#"]');

-- Dominant 13th の追加
INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Dominant 13th', '["C", "E", "G", "A#", "D", "F", "A"]'),
('D', 'Dominant 13th', '["D", "F#", "A", "C", "E", "G", "B"]'),
('E', 'Dominant 13th', '["E", "G#", "B", "D", "F#", "A", "C#"]'),
('F', 'Dominant 13th', '["F", "A", "C", "D#", "G", "A#", "D"]'),
('G', 'Dominant 13th', '["G", "B", "D", "F", "A", "C", "E"]'),
('A', 'Dominant 13th', '["A", "C#", "E", "G", "B", "D", "F#"]'),
('B', 'Dominant 13th', '["B", "D#", "F#", "A", "C#", "E", "G#"]'),
('C#', 'Dominant 13th', '["C#", "E#", "G#", "B", "D#", "F#", "A#"]'),
('D#', 'Dominant 13th', '["D#", "F#", "A#", "C#", "E#", "G#", "B#"]'),
('F#', 'Dominant 13th', '["F#", "A#", "C#", "E", "G#", "B", "D#"]'),
('G#', 'Dominant 13th', '["G#", "B#", "D#", "F#", "A#", "C#", "E#"]'),
('A#', 'Dominant 13th', '["A#", "C#", "E#", "G#", "B#", "D#", "F#"]');
-- ============================================
-- Diminished 7th (dim7) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Diminished 7th', '["C", "D#", "F#", "A"]'),
('C#', 'Diminished 7th', '["C#", "E", "G", "A#"]'),
('D', 'Diminished 7th', '["D", "F", "G#", "B"]'),
('D#', 'Diminished 7th', '["D#", "F#", "A", "C"]'),
('E', 'Diminished 7th', '["E", "G", "A#", "C#"]'),
('F', 'Diminished 7th', '["F", "G#", "B", "D"]'),
('F#', 'Diminished 7th', '["F#", "A", "C", "D#"]'),
('G', 'Diminished 7th', '["G", "A#", "C#", "E"]'),
('G#', 'Diminished 7th', '["G#", "B", "D", "F"]'),
('A', 'Diminished 7th', '["A", "C", "D#", "F#"]'),
('A#', 'Diminished 7th', '["A#", "C#", "E", "G"]'),
('B', 'Diminished 7th', '["B", "D", "F", "G#"]');


INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Half-Diminished', '["C", "D#", "F#", "A#"]'),
('C#', 'Half-Diminished', '["C#", "E", "G", "B"]'),
('D', 'Half-Diminished', '["D", "F", "G#", "C"]'),
('D#', 'Half-Diminished', '["D#", "F#", "A", "C#"]'),
('E', 'Half-Diminished', '["E", "G", "A#", "D"]'),
('F', 'Half-Diminished', '["F", "G#", "B", "D#"]'),
('F#', 'Half-Diminished', '["F#", "A", "C", "E"]'),
('G', 'Half-Diminished', '["G", "A#", "C#", "F"]'),
('G#', 'Half-Diminished', '["G#", "B", "D", "F#"]'),
('A', 'Half-Diminished', '["A", "C", "D#", "G"]'),
('A#', 'Half-Diminished', '["A#", "C#", "E", "G#"]'),
('B', 'Half-Diminished', '["B", "D", "F", "A"]');

-- ============================================
-- Major Minor 7th (MajMin7) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Major Minor 7th', '["C", "E", "G", "A#"]'),
('C#', 'Major Minor 7th', '["C#", "E#", "G#", "B"]'),
('D', 'Major Minor 7th', '["D", "F#", "A", "C"]'),
('D#', 'Major Minor 7th', '["D#", "F#", "A#", "C#"]'),
('E', 'Major Minor 7th', '["E", "G#", "B", "D"]'),
('F', 'Major Minor 7th', '["F", "A", "C", "D#"]'),
('F#', 'Major Minor 7th', '["F#", "A#", "C#", "E"]'),
('G', 'Major Minor 7th', '["G", "B", "D", "F"]'),
('G#', 'Major Minor 7th', '["G#", "B#", "D#", "F#"]'),
('A', 'Major Minor 7th', '["A", "C#", "E", "G"]'),
('A#', 'Major Minor 7th', '["A#", "C#", "E#", "G#"]'),
('B', 'Major Minor 7th', '["B", "D#", "F#", "A"]');

-- ============================================
-- Minor Major 7th (mMaj7) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Minor Major 7th', '["C", "D#", "G", "B"]'),
('C#', 'Minor Major 7th', '["C#", "E", "G#", "B#"]'),
('D', 'Minor Major 7th', '["D", "F", "A", "C#"]'),
('D#', 'Minor Major 7th', '["D#", "F#", "A#", "D"]'),
('E', 'Minor Major 7th', '["E", "G", "B", "D#"]'),
('F', 'Minor Major 7th', '["F", "G#", "C", "E"]'),
('F#', 'Minor Major 7th', '["F#", "A", "C#", "E#"]'),
('G', 'Minor Major 7th', '["G", "A#", "D", "F#"]'),
('G#', 'Minor Major 7th', '["G#", "B", "D#", "G"]'),
('A', 'Minor Major 7th', '["A", "C", "E", "G#"]'),
('A#', 'Minor Major 7th', '["A#", "C#", "E#", "A"]'),
('B', 'Minor Major 7th', '["B", "D", "F#", "A#"]');

-- ============================================
-- Minor Major 9th (mMaj9) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Minor Major 9th', '["C", "D#", "G", "B", "D"]'),
('C#', 'Minor Major 9th', '["C#", "E", "G#", "B#", "D#"]'),
('D', 'Minor Major 9th', '["D", "F", "A", "C#", "E"]'),
('D#', 'Minor Major 9th', '["D#", "F#", "A#", "D", "F"]'),
('E', 'Minor Major 9th', '["E", "G", "B", "D#", "F#"]'),
('F', 'Minor Major 9th', '["F", "G#", "C", "E", "G"]'),
('F#', 'Minor Major 9th', '["F#", "A", "C#", "E#", "G#"]'),
('G', 'Minor Major 9th', '["G", "A#", "D", "F#", "A"]'),
('G#', 'Minor Major 9th', '["G#", "B", "D#", "G", "A#"]'),
('A', 'Minor Major 9th', '["A", "C", "E", "G#", "B"]'),
('A#', 'Minor Major 9th', '["A#", "C#", "E#", "A", "C"]'),
('B', 'Minor Major 9th', '["B", "D", "F#", "A#", "C#"]');

-- ============================================
-- Minor Major 11th (mMaj11) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Minor Major 11th', '["C", "D#", "G", "B", "D", "F"]'),
('C#', 'Minor Major 11th', '["C#", "E", "G#", "B#", "D#", "F#"]'),
('D', 'Minor Major 11th', '["D", "F", "A", "C#", "E", "G"]'),
('D#', 'Minor Major 11th', '["D#", "F#", "A#", "D", "F", "G#"]'),
('E', 'Minor Major 11th', '["E", "G", "B", "D#", "F#", "A"]'),
('F', 'Minor Major 11th', '["F", "G#", "C", "E", "G", "A#"]'),
('F#', 'Minor Major 11th', '["F#", "A", "C#", "E#", "G#", "B"]'),
('G', 'Minor Major 11th', '["G", "A#", "D", "F#", "A", "C"]'),
('G#', 'Minor Major 11th', '["G#", "B", "D#", "G", "A#", "C#"]'),
('A', 'Minor Major 11th', '["A", "C", "E", "G#", "B", "D"]'),
('A#', 'Minor Major 11th', '["A#", "C#", "E#", "A", "C", "D#"]'),
('B', 'Minor Major 11th', '["B", "D", "F#", "A#", "C#", "E"]');

-- ============================================
-- Minor Major 13th (mMaj13) の登録
-- ============================================

INSERT INTO chord_master (root, chord_name, tones) VALUES 
('C', 'Minor Major 13th', '["C", "D#", "G", "B", "D", "F", "A"]'),
('C#', 'Minor Major 13th', '["C#", "E", "G#", "B#", "D#", "F#", "A#"]'),
('D', 'Minor Major 13th', '["D", "F", "A", "C#", "E", "G", "B"]'),
('D#', 'Minor Major 13th', '["D#", "F#", "A#", "D", "F", "G#", "C"]'),
('E', 'Minor Major 13th', '["E", "G", "B", "D#", "F#", "A", "C#"]'),
('F', 'Minor Major 13th', '["F", "G#", "C", "E", "G", "A#", "D"]'),
('F#', 'Minor Major 13th', '["F#", "A", "C#", "E#", "G#", "B", "D#"]'),
('G', 'Minor Major 13th', '["G", "A#", "D", "F#", "A", "C", "E"]'),
('G#', 'Minor Major 13th', '["G#", "B", "D#", "G", "A#", "C#", "F"]'),
('A', 'Minor Major 13th', '["A", "C", "E", "G#", "B", "D", "F#"]'),
('A#', 'Minor Major 13th', '["A#", "C#", "E#", "A", "C", "D#", "G"]'),
('B', 'Minor Major 13th', '["B", "D", "F#", "A#", "C#", "E", "G#"]');


