.class Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$700(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x47c35000    # 100000.0f

    if-ne p1, v2, :cond_0

    int-to-float v2, p2

    mul-float/2addr v2, v0

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v5, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v5}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$400(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/SpringConfig;

    move-result-object v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/facebook/rebound/SpringConfig;->tension:D

    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$800()Ljava/text/DecimalFormat;

    move-result-object v5

    float-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v6}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$900(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "T:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1000(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/SeekBar;

    move-result-object v2

    if-ne p1, v2, :cond_1

    int-to-float v2, p2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$400(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Lcom/facebook/rebound/SpringConfig;

    move-result-object v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/facebook/rebound/SpringConfig;->friction:D

    invoke-static {}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$800()Ljava/text/DecimalFormat;

    move-result-object v3

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SeekbarListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1100(Lcom/facebook/rebound/ui/SpringConfiguratorView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "F:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
