.class public final synthetic Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;

    invoke-direct {v0}, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;-><init>()V

    sput-object v0, Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;->INSTANCE:Lcom/samsung/android/friends/executable/-$$Lambda$ExecAccessoryMgr$MIBLFp5qnsjcSjjzYsGKI6D3dqI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->lambda$MIBLFp5qnsjcSjjzYsGKI6D3dqI(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
