.class Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;
.super Ljava/lang/Object;
.source "NavBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field mDataType:Ljava/lang/String;

.field mDef:Ljava/lang/Integer;

.field mForUser:Ljava/lang/String;

.field mIntValue:I

.field mKey:Ljava/lang/String;

.field mSettingType:Ljava/lang/String;

.field mStringValue:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz p6, :cond_0

    const-string v0, "ForUser"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    const-string v0, "Global"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Secure"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "System"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid setting type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Int"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "String"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mUri:Landroid/net/Uri;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid setting key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.provider.Settings$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUriFor"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v2

    const-string v3, "NavBarSettingsHelper"

    const-string v4, "Exception occurred"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Landroid/net/Uri;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    return v0
.end method

.method public read(Landroid/content/ContentResolver;)V
    .locals 12

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.provider.Settings$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    const-string v3, "ForUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    const/4 v7, -0x2

    if-eqz v2, :cond_2

    const-string v2, "String"

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v9, v6

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string v11, "Int"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-class v10, Ljava/lang/String;

    :goto_0
    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    const-string v2, "Int"

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    aput-object v5, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    goto/16 :goto_4

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Landroid/content/ContentResolver;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    const-string v2, "Int"

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    goto/16 :goto_4

    :cond_3
    const-string v2, "String"

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    const-string v2, "String"

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v6

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string v9, "Int"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_6
    const-class v8, Ljava/lang/String;

    :goto_2
    aput-object v8, v7, v4

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    const-string v2, "Int"

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v3, v6

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    const-string v2, "Int"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    goto :goto_4

    :cond_8
    const-string v2, "String"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v1

    const-string v2, "NavBarSettingsHelper"

    const-string v3, "Exception occurred"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    move-result-object v0

    const-string v1, "NavBarSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIntValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStringValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$200(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->access$400(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->mIntValue:I

    return-void
.end method
