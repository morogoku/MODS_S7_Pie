.class public abstract Lcom/android/server/EngineeringModeService$EMClient;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "EMClient"
.end annotation


# instance fields
.field private mModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addMode(Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkSignature(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    # getter for: Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x40

    const v4, 0x186a0

    if-le p2, v4, :cond_1b

    :try_start_11
    div-int v4, p2, v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_20

    :catch_19
    move-exception v3

    goto :goto_30

    :cond_1b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    :goto_20
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_2f

    const-string v3, "android"

    invoke-virtual {v1, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_19

    if-nez v3, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    goto :goto_3b

    :goto_30
    nop

    const-string v4, "EngineeringModeService"

    const-string v5, "CheckSigature Exception occured"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return v0
.end method

.method protected compareModes(Ljava/lang/Integer;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareName(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareUid(I)Z
    .registers 4

    const v0, 0x186a0

    rem-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getModes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    return v0
.end method

.method public abstract isEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z
.end method
