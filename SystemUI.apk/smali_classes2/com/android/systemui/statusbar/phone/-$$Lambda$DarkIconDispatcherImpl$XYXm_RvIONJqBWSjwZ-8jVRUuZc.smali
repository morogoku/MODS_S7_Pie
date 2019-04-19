.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$XYXm_RvIONJqBWSjwZ-8jVRUuZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$XYXm_RvIONJqBWSjwZ-8jVRUuZc;->f$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$XYXm_RvIONJqBWSjwZ-8jVRUuZc;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$XYXm_RvIONJqBWSjwZ-8jVRUuZc;->f$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$XYXm_RvIONJqBWSjwZ-8jVRUuZc;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->lambda$addDarkReceiver$0(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;Landroid/graphics/Rect;FI)V

    return-void
.end method
