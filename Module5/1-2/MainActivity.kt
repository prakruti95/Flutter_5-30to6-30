package com.example.jsoninsertex

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley

class MainActivity : AppCompatActivity()
{

    lateinit var edt1:EditText
    lateinit var edt2:EditText
    lateinit var edt3:EditText
    lateinit var btn1:Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        edt1 = findViewById(R.id.edt1)
        edt2 = findViewById(R.id.edt2)
        edt3 = findViewById(R.id.edt3)
        btn1 = findViewById(R.id.btn1)

        btn1.setOnClickListener {


            var pname = edt1.text.toString()
            var pprice = edt2.text.toString()
            var pdes = edt3.text.toString()

            var stringRequest = object : StringRequest(Request.Method.POST,
                "https://prakrutitech.buzz/Fluttertestapi/productinsert.php",
                Response.Listener {

                    Toast.makeText(applicationContext, "Inserted", Toast.LENGTH_SHORT).show()

                },
                Response.ErrorListener {

                    Toast.makeText(applicationContext, "Error", Toast.LENGTH_SHORT).show()
                })
                {
                    override fun getParams(): MutableMap<String, String>?
                    {
                        var map = HashMap<String,String>()
                        map["product_name"]=pname
                        map["product_price"]=pprice
                        map["product_description"]=pdes
                        return map
                    }

                }

                var queue:RequestQueue = Volley.newRequestQueue(this)
                queue.add(stringRequest)
        }
    }
}