.class public final synthetic Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;

    invoke-direct {v0}, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;-><init>()V

    sput-object v0, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;->INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$lALTGgvRRoLaqDg0BfXmq_Dk-rU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->lambda$handleGetAccessoryList$0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
