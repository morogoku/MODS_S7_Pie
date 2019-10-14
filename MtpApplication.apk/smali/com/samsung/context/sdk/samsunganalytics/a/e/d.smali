.class public Lcom/samsung/context/sdk/samsunganalytics/a/e/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "dq-w"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "wifi_used"

    :goto_0
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "dq-3g"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "data_used"

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    sub-int/2addr p1, v0

    return p1
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/e/c;
    .locals 7

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;

    move-result-object v3

    move-object v0, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x7

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uv: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    return-object v6
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/b/a;",
            "Lcom/samsung/context/sdk/samsunganalytics/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dm"

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "mcc"

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "mnc"

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "uv"

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 0

    invoke-static {p0, p1, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "quota_reset_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "data_used"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wifi_used"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "quota_reset_date"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/SharedPreferences;)V

    :cond_0
    const-string v0, "rint"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "policy_received_date"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/d;->a(ILjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 5

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "dq-w"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "wifi_used"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "oq-w"

    :goto_0
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "dq-3g"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "data_used"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "oq-3g"

    goto :goto_0

    :cond_1
    move p0, v1

    move p1, p0

    move v2, p1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quota : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/ Uploaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/ limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/ size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_2

    const-string p0, "DLS Sender"

    const-string p1, "send result fail : Over daily quota"

    :goto_2
    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-ge p0, p2, :cond_3

    const-string p0, "DLS Sender"

    const-string p1, "send result fail : Over once quota"

    goto :goto_2

    :cond_3
    return v0
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p0, "wifi_used"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "wifi_used"

    :goto_0
    add-int/2addr p0, p2

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "data_used"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "data_used"

    goto :goto_0

    :cond_1
    return-void
.end method
