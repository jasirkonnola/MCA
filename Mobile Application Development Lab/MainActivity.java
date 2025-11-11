// its for KTU MCA Android Lab study Purpose
// java only
// Program 9

public class MainActivity extexds Appcompativity implements AdapterView.OnItemSelectedListener {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Spinner spinner = findviewById(R.id.spinner);
		ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this, R.array.numbers,android. R.layout.simple_spinner_item);
		adapter.setDropDownviewResource(R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(adapter);
		spinner.setOnItemSelectedListener(this);
	}
	
	public void onItemSelected(ArrayAdapter<?> parent,View view,int position,long id) {
		String selectedItem = parent.getItemAtPosition(position).toString();
		Toast.MakeText(parent.getContext(),selectedItem,Toast.LENGTH_SHORT).show();
	}
}


// Program 8

public class MainActivity extexds Appcompativity {
	String fruitlist[] = { "Apple", "Banana", "Orange"};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		ListView listView = findviewById(R.id.list);
		ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this,R.layout.activity_list_view,R.id.txtView,fruitlist);
		listView.setAdapter(arrayAdapter);
		listView.setOnItemClickedListener(new AdapterView.OnItemclickedListener() {
			
			@Override
			public void onItemClicked(ArrayAdapter<?> parent,View view,int position,long id) {
				Log.i("ListView", "selected item at position "+position);
				if (position == 0) {
					startActivity(new Intent(MainActivity.this, apple.class));
				} else if (Position == 1) {
					startActivity(new Intent(MainActivity.this, banana.class));
				} else if (position == 2) {
					startActivity(new Intent(MainActivity.this, orange.class));
				}
			}
		});
	}
}


// Progrm 6
// MainActivity

public class MainActivity extexds Appcompativity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}
	
	public void OnIndex(View view) {
		Intent intent = new Intent(this, MainActivity2.class);
		EditText editText = findviewById(R.id.text);
		String index = editText.getText().toString();
		intent.putExtra("IndexValue", index);
		startActivity(intent);
	}
}

// MainActivity2

public class MainActivity2 extexds Appcompativity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main2);
		Bundle bundle = getIntent().getExtras();
		if(bundle != null)  {
			string imgindex = bundle.getString("IndexValue");
			ImageIndex(imgindex);
		}
	}
	
	private void ImageIndex(String imgindex) {
		ImageView imageview = findviewById(R.id.img);
		switch (imgindex) {
			case "1":
				imageview.setImageResource(R.drawable.apple);
				break;
			case "2":
				imageview.setImageResource(R.drawable.banana);
				break;
			case "3":
				imageview.setImageResource(R.drawable.orange);
				break;
		}
	}
	
}

// Program 5

public class MainActivity extexds Appcompativity {

	ImageView img1,img2,img3;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		img1 = findviewById(R.id.apple);
		img2 = findviewById(R.id.banana);
		img3 = findviewById(R.id.orange);
		
		img1.setOnClickedListener(this::onClick);
		img2.setOnClickedListener(this::onClick);
		img3.setOnClickedListener(this::onClick);
		
		public void onClick(View v) {
			if(view.getId() == R.id.apple) {
				img1.setVisibility(view.GONE);
				img2.setVisibility(view.VISIBLE);
			} else if (view.getId() == R.id.banana) {
				img2.setVisibility(view.GONE);
				img3.setVisibility(view.VISIBLE);
			} else if (view.getId() == R.id.orange) {
				img3.setVisibility(view.GONE);
				img1.setVisibility(view.VISIBLE);
			}
		}
	}
}

// Program 4

public class MainActivity extexds Appcompativity {
	
	EditText username,mail,number,pass1,pass2;
	Button submit
	SharedPreferences sharedpreferences;
	SharedPreferences.Editor editor;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		username = findviewById(R.id.username);
		mail = findviewById(R.id.mail);
		number = findviewById(R.id.number);
		pass1 = findviewById(R.id.pass1);
		pass2 = findviewById(R.id.pass2);
		submit = findviewById(R.id.btn);
		
		submit.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				String usernames = username.getText().toString().trim();
				String mails = mail.getText().toString().trim();
				String numbers = number.getText().toString().trim();
				String pass1s = pass1.getText().toString().trim();
				String pass2s = pass2.getText().toString().trim();
				
				if(usernames.isEmpty()) {
					username.setError("username is empty.")
					username.requestFocus();
					return;
				}
				if(mails.isEmpty()) {
					mail.setError("mail is empty.")
					mail.requestFocus();
					return;
				}
				if(numbers.isEmpty()) {
					number.setError("number is empty.")
					number.requestFocus();
					return;
				}
				if(pass1s.isEmpty()) {
					pass1.setError("username is empty.")
					pass1.requestFocus();
					return;
				}
				if(Pass1s.length() < 6) {
					pass1.setError("minimum 6 character.")
					pass1.requestFocus();
					return;
				}
				if(!pass1s.equals(pass2s)) {
					pass2.setError("password is not matches.")
					pas2.requestFocus();
					return;
				}
				
				sharedpreferences = getSharedPreferences("UserDetails", MODE_PRIVATE);
				editor = sharedpreferences.edit();
				
				editor.putString("ussername",usernames);
				editor.putString("email",mails);
				editor.putString("phone no", numbers);
				editor.putString("password",pass2s);
				editor.apply();
				
				
				Toast.MakeText(MainActivity.this, "Submit Succesful", Toast.LENGTH_SHORT).show();
			}
		});
	}
}

// Program 3

public class MainActivity extexds Appcompativity {
	Button btn1,btn2,btnC,btnadd,btnsub,btneql;
	EditText result;
	float valueOne,valuetwo;
	boolean add,sub,mul,div;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		result = findviewById(R.id.edt)
		
		btn1 = findviewById(R.id.btn1);
		btn2 = findviewById(R.id.btn2);
		btnadd = findviewById(R.id.btnadd);
		btnsub = findviewById(R.id.btnsub);
		btnC = findviewById(R.id.btnC);
		btneql = findviewById(R.id.btneql);
		
		btn1.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				result.setText(result.getText()+"1");
			}
		});
		btn2.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				result.setText(result.getText()+"2");
			}
		});
		btnC.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				result.setText("");
			}
		});
		btnadd.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				if(result == null) {
					result.setText("");
				} else {
					valueOne = Float.parseFloat(result.getText()+"");
					add = true;
					result.setText("");
				}
			}
		});
		btnsub.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				if(result == null) {
					result.setText("");
				} else {
					valueOne = Float.parseFloat(result.getText()+"");
					sub = true;
					result.setText("");
				}
			}
		});
		btneql.setOnClickedListener(new View.OnCliclListener() {
			@Override
			public void OnClick(View v) {
				valueTwo = Float.parseFloat(result.getText()+"");
				if (add == true) {
					result.setText(valueOne+valueTwo+"");
					add = false;
				}
				if (sub == true) {
					result.setText(valueOne-valueTwo+"");
				}
			}
		});
	}
}


