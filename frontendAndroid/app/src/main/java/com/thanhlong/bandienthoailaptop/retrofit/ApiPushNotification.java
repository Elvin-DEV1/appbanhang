package com.thanhlong.bandienthoailaptop.retrofit;

import com.thanhlong.bandienthoailaptop.model.NotiResponse;
import com.thanhlong.bandienthoailaptop.model.NotiSendData;

import io.reactivex.rxjava3.core.Observable;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;

public interface ApiPushNotification {
    @Headers(
            {
                    "Content-Type: application/json",
                    "Authorization: key=AAAA-WWlpf4:APA91bF9N3ZI2vokuKntcRfrUi_RIT2x9tM_a9Ijrws0jb6FA3FF6TqCRvV6Szv3_EqhB862TcOjkBX0KPqd-e-K9VrwJufbM3ns4NKLo9vdne2diG3oo9Aj-BJn9f_yMNR5IMgTwDpU"
            }
    )

    @POST("fcm/send")
    Observable<NotiResponse> sendNotification(@Body NotiSendData data);
}
