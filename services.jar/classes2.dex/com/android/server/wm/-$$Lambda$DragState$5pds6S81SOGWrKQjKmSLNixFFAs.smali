.class public final synthetic Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DragState$5pds6S81SOGWrKQjKmSLNixFFAs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->lambda$notifyLocationLocked$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
