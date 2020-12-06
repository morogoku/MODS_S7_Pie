.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

.field final synthetic val$cur:I

.field final synthetic val$pageOffset:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$cur:I

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$pageOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CSTMPagedTileLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$cur:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pageOffset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$pageOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->val$cur:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->requestLayout()V

    :cond_0
    return-void
.end method
