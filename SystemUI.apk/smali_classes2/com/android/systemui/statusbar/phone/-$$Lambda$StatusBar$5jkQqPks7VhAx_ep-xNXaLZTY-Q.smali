.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5jkQqPks7VhAx_ep-xNXaLZTY-Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$21(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
