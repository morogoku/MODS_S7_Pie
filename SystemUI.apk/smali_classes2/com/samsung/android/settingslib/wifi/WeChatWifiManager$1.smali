.class Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;
.super Ljava/lang/Thread;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->checkLogout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "wx7c913747c92bb95d"

    goto :goto_0

    :cond_0
    const-string v0, "wxc85693d064779676"

    :goto_0
    const-string v1, "content://com.tencent.mm.sdk.comm.provider/getWifiList?appid=%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "[{\'ssid\':\'Logout\'}]"

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "WeChatWifiManager"

    const-string v7, "checkLogout, JSONException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v11, 0x3

    new-array v9, v11, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v9, v4

    aput-object v3, v9, v2

    const/4 v5, 0x2

    const-string v6, "1"

    aput-object v6, v9, v5

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v2, "WeChatWifiManager"

    const-string v4, "checkLogout, cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    return-void

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    if-ne v6, v2, :cond_4

    const-string v6, "retCode"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v11, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$100(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "WeChatWifiManager"

    const-string v4, "checkLogout, Broadcast is already sent."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$200(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v4, v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$102(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->this$0:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-static {v2, v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->access$102(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z

    :cond_4
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-void
.end method
