.class public Lcom/android/server/policy/GlobalActionsDebugMode;
.super Ljava/lang/Object;
.source "GlobalActionsDebugMode.java"


# static fields
.field private static final ACTION_UPDATE_GLOBALACTION_TYPE:Ljava/lang/String; = "com.android.server.policy.ACTION_UPDATE_GLOBALACTION_TYPE"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGlobalActionsStartByService:Z

.field private mIsDebugMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mGlobalActionsStartByService:Z

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mIsDebugMode:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActionsDebugMode;->addGlobalActionsUpdateStateListener()V

    :cond_17
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/GlobalActionsDebugMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mGlobalActionsStartByService:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/policy/GlobalActionsDebugMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mIsDebugMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/GlobalActionsDebugMode;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addGlobalActionsUpdateStateListener()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.policy.ACTION_UPDATE_GLOBALACTION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/policy/GlobalActionsDebugMode$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActionsDebugMode$1;-><init>(Lcom/android/server/policy/GlobalActionsDebugMode;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method isDebugMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mIsDebugMode:Z

    return v0
.end method

.method isGlobalActionsStartBySystemUI()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActionsDebugMode;->mGlobalActionsStartByService:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
