.class Lcom/android/systemui/bar/BrightnessBar$2;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BrightnessBar;->initBrightnessDetailResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/BrightnessBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/bar/BrightnessBar;->access$000(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/BrightnessDetail;->showDetail(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2027"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "225"

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method
