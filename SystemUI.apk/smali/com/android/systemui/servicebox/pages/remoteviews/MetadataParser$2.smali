.class Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->access$000(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->access$000(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->access$100(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;)V

    return-void
.end method
