.class final Lcom/android/server/EngineeringModeService$EngineeringModeClient;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngineeringModeClient"
.end annotation


# static fields
.field private static final EM_NO_PlATFORM_SIGNATURE:I = 0x0

.field private static final EM_PlATFORM_SIGNATURE:I = 0x1


# instance fields
.field private mPkgName:Ljava/lang/String;

.field private mProcName:Ljava/lang/String;

.field private mSignature:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->updateClientInfo(Ljava/lang/String;)V

    return-void
.end method

.method private checkSignature(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    return v0

    :cond_d
    const/16 v3, 0x40

    const v4, 0x186a0

    if-le p2, v4, :cond_1e

    :try_start_14
    div-int v4, p2, v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_23

    :catch_1c
    move-exception v3

    goto :goto_33

    :cond_1e
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    :goto_23
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_32

    const-string v3, "android"

    invoke-virtual {v1, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_1c

    if-nez v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    goto :goto_3e

    :goto_33
    nop

    const-string v4, "EngineeringModeService"

    const-string v5, "checkSignature Exception occured"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3e
    return v0
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    return v0
.end method

.method public updateClientInfo(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    # invokes: Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/EngineeringModeService;->access$700(Lcom/android/server/EngineeringModeService;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    goto :goto_25

    :cond_21
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    :goto_25
    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->checkSignature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->checkSignature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3e

    :cond_3a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    goto :goto_41

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    :goto_41
    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientInfo : PackageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],ProcName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mProcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")],UID = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "],Signature = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
