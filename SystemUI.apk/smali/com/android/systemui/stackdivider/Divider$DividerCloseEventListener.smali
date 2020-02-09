.class Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;
.super Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerCloseEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method

.method public static synthetic lambda$onAlreadyRunningOnDockedStack$0(Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$600(Lcom/android/systemui/stackdivider/Divider;)Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;->startDimAnimation()V

    return-void
.end method


# virtual methods
.method public onAlreadyRunningOnDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DividerCloseEventListener$3mzDJ7Z17dtDsDQpC2NFh3ih__A;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DividerCloseEventListener$3mzDJ7Z17dtDsDQpC2NFh3ih__A;-><init>(Lcom/android/systemui/stackdivider/Divider$DividerCloseEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
