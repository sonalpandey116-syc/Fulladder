module tb_full_adder;

reg a, b, cin;
wire sum, cout;

// Instantiate the Full Adder
full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    // Test 1: 0 + 0 + 0
    a = 0; b = 0; cin = 0;
    #10;

    // Test 2: 0 + 0 + 1
    a = 0; b = 0; cin = 1;
    #10;

    // Test 3: 0 + 1 + 0
    a = 0; b = 1; cin = 0;
    #10;

    // Test 4: 0 + 1 + 1
    a = 0; b = 1; cin = 1;
    #10;

    // Test 5: 1 + 0 + 0
    a = 1; b = 0; cin = 0;
    #10;

    // Test 6: 1 + 0 + 1
    a = 1; b = 0; cin = 1;
    #10;

    // Test 7: 1 + 1 + 0
    a = 1; b = 1; cin = 0;
    #10;

    // Test 8: 1 + 1 + 1
    a = 1; b = 1; cin = 1;
    #10;

    $finish;
end

endmodule
