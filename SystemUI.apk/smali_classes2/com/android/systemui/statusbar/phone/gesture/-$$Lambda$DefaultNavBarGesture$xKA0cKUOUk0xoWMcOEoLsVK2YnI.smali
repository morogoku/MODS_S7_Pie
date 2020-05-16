.class public final synthetic Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;->f$0:Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;->f$0:Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;->f$1:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->lambda$onDetecting$2(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V

    return-void
.end method
