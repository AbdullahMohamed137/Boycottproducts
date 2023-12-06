package com.example.boycottproducts;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class ItemViewer2 extends AppCompatActivity {

    private ImageView imageProduct;
   private TextView productName;
    private TextView isWithOrNo;
    private TextView bdael;
    private ListView list_Bdael;
    private List<Product> productList;
    private CustomAdapter customAdapter;
    //private TextView categories;
    private Product product;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_item_viewer2);

        imageProduct= findViewById(R.id.product_image);
        productName = findViewById(R.id.product_name);
        isWithOrNo = findViewById(R.id.product_with_us);
        bdael = findViewById(R.id.bdael);
        bdael.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);
        list_Bdael = findViewById(R.id.listOfBdael);
        //categories = findViewById(R.id.categ);
        //categories.setPaintFlags(Paint.UNDERLINE_TEXT_FLAG);

        String productJson = getIntent().getStringExtra("productJson");
        product = new Gson().fromJson(productJson,Product.class);

        //String productCategories = getIntent().getStringExtra("categories");
        //product = new Gson().fromJson(productCategories,Product.class);



        productList = fetchProducts();
        List<Product> filteredList = new ArrayList<>();
        for (Product object : productList){
            if (object.getCategories().equals(product.getCategories()) & !object.getIsWithUs().equals(product.getIsWithUs())) {
                filteredList.add(object);
                customAdapter = new CustomAdapter(this, filteredList);
                list_Bdael.setAdapter(customAdapter);
            }
        }

//        if (product.getCategories().equals("شيبسيات")){
//            customAdapter = new CustomAdapter(this,productList);
//            list_Bdael.setAdapter(customAdapter);
//        }
//        customAdapter = new CustomAdapter(this,productList);
//        list_Bdael.setAdapter(customAdapter);

       // categories.setText(product.getCategories());
        productName.setText(product.getName());
        if (product.getIsWithUs().equals("false")){
            isWithOrNo.setText("مقاطعة \uD83D\uDE21");
            isWithOrNo.setTextColor(Color.RED);
            

        }else {
            isWithOrNo.setText("معانا يا معلم \uD83E\uDEE1");
            isWithOrNo.setTextColor(Color.GREEN);
        }

        byte[] imageByteArray = {};
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            imageByteArray = Base64.getDecoder().decode(product.getImages());
        }
        Bitmap imageBitMap = BitmapFactory.decodeByteArray(imageByteArray,0,imageByteArray.length);
        imageProduct.setImageBitmap(imageBitMap);
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
            Type listType = new TypeToken<List<Product>>() {}.getType();
            Gson gson = new Gson();
            List<Product> dataList = gson.fromJson(jsonContent, listType);
            return dataList;
        } catch (IOException e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
}