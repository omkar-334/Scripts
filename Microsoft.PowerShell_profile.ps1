oh-my-posh init pwsh --config "C:\Users\omkar\Documents\Powershell\material.omp.json" | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine

function ppjson {
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        $json
    )
    $json | ConvertFrom-Json | ConvertTo-Json -Depth 100
}

function findfile($name) {
        ls -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | foreach {
                $place_path = $_.directory
                echo "${place_path}\${_}"
        }
}
function unzip ($file) {
        $dirname = (Get-Item $file).Basename
        echo("Extracting", $file, "to", $dirname)
        New-Item -Force -ItemType directory -Path $dirname
        expand-archive $file -OutputPath $dirname -ShowProgress
}

function grep($regex, $dir) {
        if ( $dir ) {
                ls $dir | select-string $regex
                return
        }
        $input | select-string $regex
}


function touch($file) {
        "" | Out-File $file -Encoding ASCII
}

function gs { git status }

function ga { git add . }

function gc { param($m) git commit -m "$m" }

function gp { git push }

function g { z Github }

function gcom {
    git add .
    git commit -m "$args"
}
function lazyg {
    git add .
    git commit -m "$args"
    git push
}

function activate {

    .venv/Scripts/activate
}

function internalssh {
	ssh -i "pem/internal-ir.pem" ec2-user@ec2-3-110-145-180.ap-south-1.compute.amazonaws.com
}
function investorssh {
	ssh -i "pem/investor-relation-ui.pem" ec2-user@ec2-3-109-198-101.ap-south-1.compute.amazonaws.com
}
function switchgit {
	gh auth switch
}
function size {
    $dir = Get-ChildItem -Path $PWD -Recurse -Force | Where-Object { !$_.PSIsContainer }
    $size = ($dir | Measure-Object -Property Length -Sum).Sum
    $size = [double]$size
    $suffixes = "B", "KB", "MB", "GB", "TB"
    $index = 0
    while ($size -ge 1024 -and $index -lt ($suffixes.Length - 1)) {
        $size /= 1024
        $index++
    }
    $size = "{0:N2}" -f $size
    $unit = $suffixes[$index]
    Write-Output "Total size of $PWD is $size $unit"
}
function rename {
    Rename-Item $args[0] $args[1]
}


function count {
    $items = Get-ChildItem -Path . | Measure-Object
    Write-Output "$($items.Count) items in the current directory."
}