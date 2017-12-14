package com.example.nishant.professor;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.*;
import android.view.View;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;
import java.util.List;

public class SecondActivity extends AppCompatActivity {

    private  FirebaseDatabase mfirebaseDatabase;
    private DatabaseReference mdatabaseRefernece;
    private ChildEventListener mchildEventListener;
    private RecyclerView recycler_view;
    private List<ProfessorList> professorLists =new ArrayList<>();
    private ProfessorRecyclerAdapter adapter;
    private FirebaseAuth mfirebaseAuth;
    private String department_name;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);



        Intent intent =getIntent();
        department_name=intent.getStringExtra("DEPARTMENT");
     //   mfirebaseDatabase=FirebaseDatabase.getInstance();
       // mdatabaseRefernece=mfirebaseDatabase.getReference().child(department_name).push();

    //  SecondActivity secondActivity =new SecondActivity()
       //      putProfessorData();

        recycler_view=(RecyclerView)findViewById(R.id.recycler_view);

        adapter =new ProfessorRecyclerAdapter(professorLists);

        RecyclerView.LayoutManager layoutManager=new LinearLayoutManager(getApplicationContext());
        recycler_view.setLayoutManager(layoutManager);
        recycler_view.addItemDecoration(new android.support.v7.widget.DividerItemDecoration(this, LinearLayoutManager.VERTICAL));
        recycler_view.setItemAnimator(new DefaultItemAnimator());
        recycler_view.setAdapter(adapter);

        recycler_view.addOnItemTouchListener(new RecyclerTouchListener(getApplicationContext(), recycler_view, new RecyclerTouchListener.ClickListener() {
            @Override
            public void onClick(View view, int position) {
                ProfessorList professorList = professorLists.get(position);
                Toast.makeText(SecondActivity.this,professorList.getProfessor_name()+department_name,Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onLongClick(View view, int position) {

            }
        }));

        prepareProfessorData();

    }


    public void prepareProfessorData(){
        mfirebaseDatabase=FirebaseDatabase.getInstance();
        mdatabaseRefernece= mfirebaseDatabase.getReference().child(department_name);

 mchildEventListener=new ChildEventListener() {
     @Override
     public void onChildAdded(DataSnapshot dataSnapshot, String s) {


             ProfessorList professorList = dataSnapshot.getValue(ProfessorList.class);
             professorLists.add(professorList);

        adapter.notifyDataSetChanged();
     }

     @Override
     public void onChildChanged(DataSnapshot dataSnapshot, String s) {

     }

     @Override
     public void onChildRemoved(DataSnapshot dataSnapshot) {

     }

     @Override
     public void onChildMoved(DataSnapshot dataSnapshot, String s) {

     }

     @Override
     public void onCancelled(DatabaseError databaseError) {

           }

        };
 mdatabaseRefernece.addChildEventListener(mchildEventListener);

        adapter.notifyDataSetChanged();

    }

    public void putProfessorData(){

        mfirebaseDatabase=FirebaseDatabase.getInstance();

        mdatabaseRefernece=mfirebaseDatabase.getReference().child(department_name).push();

       ProfessorList professorList = new ProfessorList();
       professorList.setProfessor_name("Pratham");
       professorList.setProfessor_status("1");

       mdatabaseRefernece.setValue(professorList);

    }


}
