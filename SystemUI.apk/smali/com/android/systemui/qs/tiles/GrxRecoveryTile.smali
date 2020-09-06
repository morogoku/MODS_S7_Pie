.class public Lcom/android/systemui/qs/tiles/GrxRecoveryTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GrxRecoveryTile.java"


# annotations

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;
    }
.end annotation


# instance fields
.field public mAdapterString:Ljava/lang/String;

.field public mConfirmationMsgId:I

.field mDetailAdapter:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

.field public mIconId:I

.field public mRequireConfirmation:Z

.field public mTileString:Ljava/lang/String;

.field mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

# direct methods

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

	invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mRequireConfirmation:Z
	
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->setUpResources()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->getRequireConfirmation()Z
	
    new-instance v0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;	

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->saveSwitchValue()V

    return-void
.end method

.method private getRequireConfirmation()Z
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rec_confirm"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private saveSwitchValue()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rec_confirm"

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mRequireConfirmation:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setUpResources()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qs_recovery_tile"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mTileString:Ljava/lang/String;

    const-string v2, "qs_recovery_confirmation"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mAdapterString:Ljava/lang/String;

    const-string v2, "qs_recovery_confirmation_message"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    
	iput v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mConfirmationMsgId:I

    const-string v2, "grx_tile_recovery"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mIconId:I
	
	
	iget v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mIconId:I
	
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;			
	

    return-void
.end method


# virtual methods

.method public getLoggingValue(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdapterLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mTileString:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

    return-object v0
.end method



.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x220

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mTileString:Ljava/lang/String;

    return-object v0
.end method

.method public gotoRecovery()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.goto.recovery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    return-void
.end method

.method protected handleClick()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mRequireConfirmation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->gotoRecovery()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mTileString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mConfirmationMsgId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$1;-><init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1


    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;


    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V


    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->showDetail(Z)V	
	
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setListening(Z)V
    .locals 1

    return-void
.end method

.method public updateToggle()V
    .locals 0

    return-void
.end method



.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1
	
	const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I
	
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mCurrentIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;		
	
	invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->getTileLabel()Ljava/lang/CharSequence;	
	
	move-result-object v0
	
	iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;	
	
	return-void
.end method	


.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method


.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method