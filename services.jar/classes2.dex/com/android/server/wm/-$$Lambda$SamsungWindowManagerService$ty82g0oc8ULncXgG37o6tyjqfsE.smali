.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$ty82g0oc8ULncXgG37o6tyjqfsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$ty82g0oc8ULncXgG37o6tyjqfsE;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$ty82g0oc8ULncXgG37o6tyjqfsE;->f$1:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$ty82g0oc8ULncXgG37o6tyjqfsE;->f$0:I

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$ty82g0oc8ULncXgG37o6tyjqfsE;->f$1:Ljava/lang/Boolean;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$updateScreenshotPolicy$7(ILjava/lang/Boolean;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
