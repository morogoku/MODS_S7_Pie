.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;->INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->lambda$initRow$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
