.class public Lcom/android/server/policy/NavBarHidePolicyManager;
.super Ljava/lang/Object;
.source "NavBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NavBarHidePolicyManager$T;,
        Lcom/android/server/policy/NavBarHidePolicyManager$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DIR_PATH:Ljava/lang/String;

.field private static final FILE_NAME:Ljava/lang/String; = "PackageMap"

.field private static final POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLICY_FIXED_OFF_METADATA:Ljava/lang/String; = "com.samsung.android.non_immersive"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DELAY_SAVE_POLICIES:I

.field private final MSG_SAVE_POLICIES:I

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

.field mPolicies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-class v0, Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/NavBarHidePolicyManager;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/navibarhidepolicy/0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.mm"

    const-string v3, "com.eg.android.AlipayGphone"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.baidu.searchbox"

    const-string v6, "com.baidu.searchbox_samsung"

    const-string v7, "com.pingan.lifeinsurance"

    const-string/jumbo v8, "tv.xiaoka.live"

    const-string v9, "com.qq.reader"

    const-string v10, "com.nttdocomo.android.dhome"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->MSG_SAVE_POLICIES:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->DELAY_SAVE_POLICIES:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/NavBarHidePolicyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->savePolicies()V

    return-void
.end method

.method private checkCallerIsSystemOrPermission()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires android.permission.STATUS_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disable(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_19

    goto :goto_1b

    :cond_19
    move v2, v1

    nop

    :cond_1b
    :goto_1b
    move v0, v2

    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private enable(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v0, v1

    :goto_1b
    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private isCallerSystem()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/NavBarHidePolicyManager;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isUidSystem(I)Z
    .registers 4

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private killApplication(Ljava/lang/String;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, -0x1

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;Z)I

    return-void
.end method

.method private loadPolicies()V
    .registers 8

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PackageMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_26
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v3, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_57
    .catchall {:try_start_26 .. :try_end_3a} :catchall_55

    nop

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: f_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    nop

    :try_start_48
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    :goto_4b
    goto :goto_73

    :catch_4c
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: d_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :catchall_55
    move-exception v3

    goto :goto_74

    :catch_57
    move-exception v3

    :try_start_58
    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: d_str.readObject() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_55

    if-eqz v1, :cond_6d

    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6d

    :catch_65
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: f_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    if-eqz v2, :cond_73

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_4c

    goto :goto_4b

    :cond_73
    :goto_73
    return-void

    :goto_74
    if-eqz v1, :cond_82

    :try_start_76
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_82

    :catch_7a
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v6, "loadPolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    if-eqz v2, :cond_90

    :try_start_84
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_90

    :catch_88
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v6, "loadPolicies: d_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    throw v3
.end method

.method private savePolicies()V
    .registers 9

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PackageMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_5f
    .catchall {:try_start_2f .. :try_end_40} :catchall_5d

    nop

    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4e

    :catch_45
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    nop

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    :goto_52
    goto :goto_7d

    :catch_53
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catchall_5d
    move-exception v4

    goto :goto_7e

    :catch_5f
    move-exception v4

    :try_start_60
    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: d_str.writeObject() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_5d

    if-eqz v2, :cond_77

    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_77

    :catch_6e
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    :goto_77
    if-eqz v3, :cond_7d

    :try_start_79
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_53

    goto :goto_52

    :cond_7d
    :goto_7d
    return-void

    :goto_7e
    if-eqz v2, :cond_8d

    :try_start_80
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_8d

    :catch_84
    move-exception v5

    sget-object v6, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "savePolicies: f_str.close() fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_9c

    :try_start_8f
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_9c

    :catch_93
    move-exception v5

    sget-object v6, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "savePolicies: f_str.close() fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    throw v4
.end method

.method private scheduleSavePolicies()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->removeMessages(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public getPolicy(Ljava/lang/String;I)I
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_19
    sget-object v1, Lcom/android/server/policy/NavBarHidePolicyManager;->POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    return v2

    :cond_23
    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_43

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.non_immersive"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_44

    if-eqz v2, :cond_43

    const/4 v0, 0x2

    return v0

    :cond_43
    goto :goto_4c

    :catch_44
    move-exception v1

    sget-object v2, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "getPolicy: getApplicationInfo fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->loadPolicies()V

    new-instance v0, Lcom/android/server/policy/NavBarHidePolicyManager$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;-><init>(Lcom/android/server/policy/NavBarHidePolicyManager;Lcom/android/server/policy/NavBarHidePolicyManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    new-instance v0, Lcom/android/server/policy/NavBarHidePolicyManager$T;

    const-string v1, "NavBarHidePolicyManagerThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$T;-><init>(Lcom/android/server/policy/NavBarHidePolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    invoke-virtual {v0}, Lcom/android/server/policy/NavBarHidePolicyManager$T;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    invoke-virtual {v0}, Lcom/android/server/policy/NavBarHidePolicyManager$T;->start()V

    :cond_2c
    return-void
.end method

.method public setPolicy(Ljava/lang/String;IZ)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->checkCallerIsSystemOrPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_10

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/policy/NavBarHidePolicyManager;->disable(Ljava/lang/String;)Z

    move-result v2

    goto :goto_14

    :catchall_e
    move-exception v2

    goto :goto_5e

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/policy/NavBarHidePolicyManager;->enable(Ljava/lang/String;)Z

    move-result v2

    :goto_14
    sget-object v3, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPolicy: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", disable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPolicies.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->scheduleSavePolicies()V

    if-eqz v2, :cond_59

    const-string v3, "com.android.settings"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/NavBarHidePolicyManager;->killApplication(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_e

    :cond_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
