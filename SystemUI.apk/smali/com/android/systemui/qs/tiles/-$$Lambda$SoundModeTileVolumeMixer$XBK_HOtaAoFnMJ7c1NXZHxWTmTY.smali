.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$XBK_HOtaAoFnMJ7c1NXZHxWTmTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$XBK_HOtaAoFnMJ7c1NXZHxWTmTY;->f$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$XBK_HOtaAoFnMJ7c1NXZHxWTmTY;->f$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->lambda$initRow$0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
