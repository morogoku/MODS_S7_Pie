.class public final synthetic Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;

    invoke-direct {v0}, Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;-><init>()V

    sput-object v0, Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;->INSTANCE:Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/util/AnrDetector;->lambda$updateLooperMsgLog$1(Ljava/lang/String;)V

    return-void
.end method
