.class Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "serviceStateListnerForIQI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    # invokes: Lcom/att/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V
    invoke-static {v0}, Lcom/att/iqi/IQIServiceBrokerExt;->access$400(Z)V

    :cond_6
    return-void
.end method
