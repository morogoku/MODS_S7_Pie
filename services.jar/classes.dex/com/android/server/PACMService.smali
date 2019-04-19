.class public final Lcom/android/server/PACMService;
.super Lcom/android/server/SystemService;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PACMService$PAC_Packet;,
        Lcom/android/server/PACMService$PACServiceSocketThread;
    }
.end annotation


# static fields
.field private static final CACHE_TAG:Ljava/lang/String; = "MODE"

.field public static final NOK:I = 0x0

.field public static final OK:I = 0x1

.field public static final PROTOCOL_VERSION:I = 0x1

.field public static final SERVICE_VERSION:Ljava/lang/String; = "10.1.0"

.field private static final TAG:Ljava/lang/String; = "PACMService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mAtMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmTokenState:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/server/PACMService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PACMService$1;-><init>(Lcom/android/server/PACMService;)V

    iput-object v0, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :try_start_2a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/PACMService$PACServiceSocketThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/PACMService;->mThreadSocket:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/PACMService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    invoke-direct {p0}, Lcom/android/server/PACMService;->registerProtectedCommandList()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_43

    goto :goto_4e

    :catch_43
    move-exception v0

    const-string v1, "PACMService"

    const-string v2, "Failed to start PACM Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4e
    const-string v0, "PACMService"

    const-string v1, "Success to start PACM Service(S-ver : 10.1.0/ P-ver : 1)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PACMService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/PACMService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/PACMService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PACMService;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private registerForBroadcasts()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception v0

    const-string v1, "PACMService"

    const-string v2, "Failed to add Broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method private registerProtectedCommandList()V
    .registers 10

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;

    sget-object v2, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;

    sget-object v3, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v4, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;

    sget-object v5, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;-><init>(Landroid/content/Context;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;

    sget-object v5, Lcom/android/server/PACMService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;-><init>(Landroid/content/Context;)V

    aput-object v4, v0, v1

    const/4 v1, 0x0

    array-length v4, v0

    :goto_2d
    if-ge v2, v4, :cond_5c

    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;->getList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->putCommandList(Ljava/util/LinkedHashMap;Ljava/util/List;)I

    move-result v6

    move v1, v6

    if-eq v1, v3, :cond_59

    const-string v6, "PACMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add class command list("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5d

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_5c
    goto :goto_61

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_61
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    const-string v0, "PACMService"

    const-string/jumbo v1, "onStart() "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
