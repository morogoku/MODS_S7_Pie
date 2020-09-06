.class public Lcom/android/server/sepunion/friends/common/FwDependency;
.super Ljava/lang/Object;
.source "FwDependency.java"


# static fields
.field private static final PRODUCT_DEV:Z

.field private static final SHELL_UID:Ljava/lang/String; = "SHELL_UID"

.field private static final SYSTEM_UID:Ljava/lang/String; = "SYSTEM_UID"

.field private static final TAG:Ljava/lang/String; = "Fw"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->internalIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Landroid/content/Context;

    const-string v3, "bindServiceAsUser"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    const-class v6, Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/os/UserHandle;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_3c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object p4, v2, v9

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3b} :catch_3d

    return v2

    :cond_3c
    goto :goto_41

    :catch_3d
    move-exception v2

    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_41
    if-nez v0, :cond_4c

    const-string v2, "Fw"

    const-string v3, "bindServiceAsUser fail to invoke method"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4c
    return v1
.end method

.method private static getProcessField(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    const-class v1, Landroid/os/Process;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move v0, v2

    :cond_f
    goto :goto_14

    :catch_10
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_14
    return v0
.end method

.method public static getProcessShellUid()I
    .registers 1

    const-string v0, "SHELL_UID"

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProcessSystemUid()I
    .registers 1

    const-string v0, "SYSTEM_UID"

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessField(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_10} :catch_12

    move-object v1, v0

    :cond_11
    goto :goto_16

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_16
    if-nez v1, :cond_22

    const-string v0, "Fw"

    const-string v2, "getUserHandle return null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_22
    return-object v1
.end method

.method private static internalIsProductDev()Z
    .registers 4

    const-class v0, Landroid/os/Debug;

    :try_start_2
    const-string/jumbo v1, "semIsProductDev"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_1d

    return v2

    :cond_1c
    goto :goto_21

    :catch_1d
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_21
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static isProductDev()Z
    .registers 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/sepunion/friends/common/FwDependency;->PRODUCT_DEV:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 18

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    :try_start_3
    const-class v0, Landroid/content/Context;

    const-string/jumbo v4, "registerReceiverAsUser"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/BroadcastReceiver;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/UserHandle;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Landroid/content/IntentFilter;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const-class v7, Landroid/os/Handler;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_40

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v8

    aput-object p2, v0, v9

    aput-object p3, v0, v10

    aput-object p4, v0, v11

    aput-object p5, v0, v5

    invoke-virtual {v2, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3f} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3f} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3f} :catch_41

    return-object v0

    :cond_40
    goto :goto_45

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_45
    if-nez v2, :cond_51

    const-string v0, "Fw"

    const-string/jumbo v5, "registerReceiverAsUser fail to invoke method"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_51
    return-object v1
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "sendBroadcastAsUser"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_28

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_29

    :cond_28
    return v6

    :catch_29
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "Fw"

    const-string/jumbo v2, "startActivityAsUser fail to invoke method"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/content/Context;

    const-string/jumbo v2, "startActivityAsUser"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_21

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_22

    :cond_21
    return v6

    :catch_22
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "Fw"

    const-string/jumbo v2, "startActivityAsUser fail to invoke method"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
