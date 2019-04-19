.class public final synthetic Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;->INSTANCE:Lcom/android/systemui/-$$Lambda$y5ENpid5qZUItEIIswoW8rffONA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/AnrDetector;->getInstance()Lcom/android/systemui/util/AnrDetector;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
