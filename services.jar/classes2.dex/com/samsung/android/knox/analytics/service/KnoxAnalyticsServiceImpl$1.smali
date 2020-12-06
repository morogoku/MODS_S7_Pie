.class Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxAnalyticsActivation(Z)V
    .registers 4

    # getter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->access$102(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)Z

    return-void
.end method

.method public onKnoxAnalyticsDeactivation(Z)V
    .registers 4

    # getter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->access$102(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;Z)Z

    return-void
.end method

.method public onStatusChanged(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onTriggerChanged(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method
