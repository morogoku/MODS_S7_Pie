.class public final synthetic Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->lambda$new$1(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V

    return-void
.end method
