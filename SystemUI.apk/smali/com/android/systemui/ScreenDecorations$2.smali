.class Lcom/android/systemui/ScreenDecorations$2;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/samsung/android/vr/GearVrManager$GearVrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 4

    const/16 v0, 0x40

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v3}, Lcom/android/systemui/ScreenDecorations;->access$502(Lcom/android/systemui/ScreenDecorations;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v2}, Lcom/android/systemui/ScreenDecorations;->access$502(Lcom/android/systemui/ScreenDecorations;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v3}, Lcom/android/systemui/ScreenDecorations;->access$602(Lcom/android/systemui/ScreenDecorations;Z)Z

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v3}, Lcom/android/systemui/ScreenDecorations;->access$702(Lcom/android/systemui/ScreenDecorations;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v2}, Lcom/android/systemui/ScreenDecorations;->access$602(Lcom/android/systemui/ScreenDecorations;Z)Z

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v2}, Lcom/android/systemui/ScreenDecorations;->access$702(Lcom/android/systemui/ScreenDecorations;Z)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$800()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$600(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    nop

    :cond_4
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$802(Z)Z

    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$800()Z

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v1}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
