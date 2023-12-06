package com.example.boycottproducts;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Toast;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private ListView list;
    private SearchView searchView;
    private List<Product> products;
    private CustomAdapter customAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        list = findViewById(R.id.list_view);
        products = fetchProducts();
        customAdapter = new CustomAdapter(this,products);
        list.setAdapter(customAdapter);

        searchView = findViewById(R.id.search);
        searchView.clearFocus();
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String query) {
                return false;
            }

            @Override
            public boolean onQueryTextChange(String newText) {
                filterList(newText);
                return true;
            }
        });

        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Product product = (Product) adapterView.getItemAtPosition(i);
                Intent intent = new Intent(view.getContext(),ItemViewer2.class);
                intent.putExtra("productJson",new Gson().toJson(product));
                //intent.putExtra("categories",new Gson().toJson(product));
                startActivity(intent);
            }
        });

    }


    private List<Product> fetchProducts() {
        try {
            InputStream myFileObject = getAssets().open("jsonSQLData.json");
            BufferedReader reader = new BufferedReader(new InputStreamReader(myFileObject));

            StringBuilder stringBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
            }

            reader.close();
            myFileObject.close();

            String jsonContent = stringBuilder.toString();

            // Parse the JSON array into a List of your data objects
            Type listType = new TypeToken<List<Product>>() {
            }.getType();
            Gson gson = new Gson();
            List<Product> dataList = gson.fromJson(jsonContent, listType);
            return dataList;
        } catch (IOException e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
    private void filterList(String newText) {
        List<Product> filteredList = new ArrayList<>();
        for (Product product : products){
            if (product.getName().contains(newText)){
                filteredList.add(product);
            }
        }
        if (filteredList.isEmpty()){
            Toast.makeText(this, "لسه مضافش", Toast.LENGTH_SHORT).show();
        }else {
            customAdapter.setFilteredList(filteredList);
        }
    }
}