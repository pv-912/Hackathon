package com.example.nishant.professor;

import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;

import com.firebase.ui.auth.AuthUI;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private FirebaseAuth mfirebaseAuth;
    private FirebaseAuth.AuthStateListener mauthStateListener;
    private final static int RC_SIGN_IN =1;
    private List<DepartmentList>departmentLists =new ArrayList<>();
    private DepartmentRecyclerAdapter adapter;
    private RecyclerView recycler_view;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mfirebaseAuth=FirebaseAuth.getInstance();
        recycler_view=(RecyclerView)findViewById(R.id.recycler_view);

        adapter =new DepartmentRecyclerAdapter(departmentLists);

        recycler_view.setHasFixedSize(true);
        RecyclerView.LayoutManager layoutManager=new LinearLayoutManager(getApplicationContext());

        recycler_view.setLayoutManager(layoutManager);

        recycler_view.addItemDecoration(new DividerItemDecoration(this, LinearLayoutManager.VERTICAL));

        recycler_view.setItemAnimator(new DefaultItemAnimator());

        recycler_view.setAdapter(adapter);

        recycler_view.addOnItemTouchListener(new RecyclerTouchListener(getApplicationContext(), recycler_view, new RecyclerTouchListener.ClickListener() {
            @Override
            public void onClick(View view, int position) {
                DepartmentList departmentList = departmentLists.get(position);
                Toast.makeText(MainActivity.this,departmentList.getDepartment_name(),Toast.LENGTH_SHORT).show();
                  Intent intent =new Intent(MainActivity.this,SecondActivity.class);
                  intent.putExtra("DEPARTMENT",departmentList.getDepartment_name());
                  startActivity(intent);
            }

            @Override
            public void onLongClick(View view, int position) {

            }
        }));

        prepareDepartmentData();



        mauthStateListener= new FirebaseAuth.AuthStateListener() {
            @Override
            public void onAuthStateChanged(@NonNull FirebaseAuth firebaseAuth) {

                FirebaseUser user = mfirebaseAuth.getCurrentUser();

                if(user!=null){
                    user.getDisplayName();
                    onSignedIn();
                }else {

                    onSignedOut();
                    startActivityForResult(
                            AuthUI.getInstance()
                                    .createSignInIntentBuilder()
                                    .setAvailableProviders(
                                            Arrays.asList(new AuthUI.IdpConfig.Builder(AuthUI.EMAIL_PROVIDER).build(),
                                                    new AuthUI.IdpConfig.Builder(AuthUI.GOOGLE_PROVIDER).build()))
                                    .build(),
                            RC_SIGN_IN);

                }

            }
        };
    }



    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == RC_SIGN_IN) {
            if (resultCode == RESULT_OK) {
                Toast.makeText(MainActivity.this, "SIGNED_IN", Toast.LENGTH_SHORT).show();
            } else if (resultCode == RESULT_CANCELED) {
                Toast.makeText(MainActivity.this, "SIGNED_CANCELLED", Toast.LENGTH_SHORT).show();
            }
        }
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.sign_out_menu:{
                AuthUI.getInstance().signOut(this);
                return true;
            }

            default:
                return super.onOptionsItemSelected(item);
        }
    }



    public void onSignedIn(){
        Toast.makeText(MainActivity.this,"Signed_In",Toast.LENGTH_SHORT).show();

    }
    public void onSignedOut() {


    }
    @Override
    protected void onPause(){
        super.onPause();
        if(mauthStateListener!=null)
            mfirebaseAuth.removeAuthStateListener(mauthStateListener);
    }


    @Override
    protected void onResume(){
        super.onResume();
        mfirebaseAuth.addAuthStateListener(mauthStateListener);

    }

    public void prepareDepartmentData(){

        DepartmentList departmentList =new DepartmentList("ARCHITECTURE");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("BIOTECH");
        departmentLists.add(departmentList);

        departmentList=new DepartmentList("CHEMICAL");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("CIVIL");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("CS");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("ELECTRICAL");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("EC");
        departmentLists.add(departmentList);

        departmentList=new DepartmentList("MECHNICAL");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("METALLURGY");
        departmentLists.add(departmentList);

        departmentList=new DepartmentList("PAPER&PULP");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("POLYMER");
        departmentLists.add(departmentList);


        departmentList=new DepartmentList("PHYSICS");
        departmentLists.add(departmentList);

        adapter.notifyDataSetChanged();

    }

}
