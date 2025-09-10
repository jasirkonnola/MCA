package com.example.sharedpreferences;

import androidx.appcompat.app.AppCompatActivity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText username, mobilenum, email, pass1, pass2;
    Button submit;
    SharedPreferences sharedPreferences;
    SharedPreferences.Editor editor;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        username = (EditText) findViewById(R.id.username);
        mobilenum = (EditText) findViewById(R.id.number);
        email = (EditText) findViewById(R.id.mail);
        pass1 = (EditText) findViewById(R.id.password);
        pass2 = (EditText) findViewById(R.id.conpassword);
        submit = (Button) findViewById(R.id.loginbtn); // Make sure this ID exists in XML

        sharedPreferences = getSharedPreferences("UserDetails", MODE_PRIVATE);
        editor = sharedPreferences.edit();

        submit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String usernames = username.getText().toString().trim();
                int mobilei = Integer.parseInt(mobilenum.getText().toString().trim());
                String emails = email.getText().toString().trim();
                String pass1s = pass1.getText().toString().trim();
                String pass2s = pass2.getText().toString().trim();

                if (usernames.isEmpty()) {
                    username.setError("User is Empty");
                    username.requestFocus();
                    return;
                }
                if (emails.isEmpty()) {
                    email.setError("User is Empty");
                    email.requestFocus();
                    return;
                }
                if (pass1s.isEmpty()) {
                    pass1.setError("User is Empty");
                    pass1.requestFocus();
                    return;
                }
                if (pass2s.isEmpty()) {
                    pass2.setError("User is Empty");
                    pass2.requestFocus();
                    return;
                }
                if (pass1s.length() < 6) {
                    pass1.setError("minimum 6 character");
                    pass1.requestFocus();
                    return;
                }
                if (!pass1s.equals(pass2s)) {
                    pass2.setError("pass not matching");
                    pass2.requestFocus();
                    return;
                }

                Toast.makeText(MainActivity.this, "Registration successful", Toast.LENGTH_SHORT).show();
                editor.putString("keyusername", usernames);
                editor.putInt("keumobile",mobilei);
                editor.putString("keyemail",emails);
                editor.putString("keypassword",pass2s);
                editor.apply();
            }
        });
    }
}
