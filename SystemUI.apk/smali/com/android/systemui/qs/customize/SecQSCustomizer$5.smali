.class Lcom/android/systemui/qs/customize/SecQSCustomizer$5;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f0a0406

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v1

    const/16 v5, 0x1388

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x3e8

    invoke-static {v1, v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f0a0403

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v1

    const/16 v5, 0x1770

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x7d0

    invoke-static {v1, v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f0a0232

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcc

    invoke-static {v1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v5, 0x7f0a0231

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcb

    invoke-static {v1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SecQSCustomizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_DRAG_ENDED mWhereAmI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v5, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    nop

    :cond_6
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
