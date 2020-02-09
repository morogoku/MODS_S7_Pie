.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;
.super Lcom/android/systemui/qs/SystemSetting;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2

    move v0, p1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;->updateOpacity(I)V

    :cond_0
    return-void
.end method
