.class final Lcom/android/systemui/bar/QuickConnectBar$H;
.super Landroid/os/Handler;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_UPDATE_ITEMS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/QuickConnectBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bar/QuickConnectBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QuickConnectBar$H;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bar/QuickConnectBar;Lcom/android/systemui/bar/QuickConnectBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QuickConnectBar$H;-><init>(Lcom/android/systemui/bar/QuickConnectBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QuickConnectBar$H;->this$0:Lcom/android/systemui/bar/QuickConnectBar;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/bar/QuickConnectBar$State;

    invoke-static {v0, v1}, Lcom/android/systemui/bar/QuickConnectBar;->access$200(Lcom/android/systemui/bar/QuickConnectBar;Lcom/android/systemui/bar/QuickConnectBar$State;)V

    :goto_0
    return-void
.end method