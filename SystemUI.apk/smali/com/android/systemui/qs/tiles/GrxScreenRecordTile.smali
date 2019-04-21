.class public Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GrxScreenRecordTile.java"


# annotations

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields

.field public mIconId:I

.field public mStringId:I

.field mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->setIds()V
	
    return-void
.end method


.method private setIds()V
	.locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "drawable"

    const-string v1, "grx_screen_recorder"
	
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3	

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
	
	iput v1, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mIconId:I
	
	iget v1, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mIconId:I
	
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;		
	
	
	
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "string"

    const-string v1, "quick_settings_screen_recorder_label"
	
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3	

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
	
	iput v1, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mStringId:I
	
	
	
	return-void
.end method




# virtual methods


.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    const/4 v0, 0x0
	
    return-object v0
.end method

.method public getLoggingValue(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x121

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;
	
	iget v2, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mStringId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 4
	
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V	
	
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.app.screenrecorder"

    const-string/jumbo v3, "com.sec.app.screenrecorder.activity.LauncherActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
	
	const-string v2, "grxtogglerecording"
	
	const v3, 0x0
	
	invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;	

    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;   
	
	iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mContext:Landroid/content/Context;	
	
	invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V	

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0	
	
	:goto_exit
	return-void	
	
	:catch_0	
	
	move-exception v0
		
	goto: goto_exit
	
.end method

.method protected handleDestroy()V
    .locals 1


    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1
	
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I
	
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;	
	
	invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->getTileLabel()Ljava/lang/CharSequence;	
	
	move-result-object v0
	
	iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-void

.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GrxScreenRecordTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    return-void
.end method

.method public updateToggle()V
    .locals 1

    return-void
.end method


.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method